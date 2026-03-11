//
//  DataContainer.swift
//  GratefulMoments
//
//  Created by hh on 09/03/2026.
//

import Foundation
import SwiftData
import SwiftUI

@Observable
@MainActor
class DataContainer {
    let modelContainer: ModelContainer
    var badgeManager: BadgeManager
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    init(includeSampleMoments: Bool = false) {
        let schema = Schema([
            Moment.self,
            Badge.self
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: includeSampleMoments)
        
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            badgeManager = BadgeManager(modelContainer: modelContainer)
            try badgeManager.loadBadgesIfNeeded()
            
            if includeSampleMoments {
                loadSampleData()
            }
            try context.save()
        } catch  {
            fatalError("Could not create ModelContainer: \(error)")
        }

        
    }
    
    private func loadSampleData() {
        for moment in Moment.sampleData {
            context.insert(moment)
        }
    }
}

@MainActor
private let sampleContainer = DataContainer(includeSampleMoments: true)

extension View {
    func sampleDataContainer() -> some View {
        self
            .environment(sampleContainer)
            .modelContainer(sampleContainer.modelContainer)
    }
}
