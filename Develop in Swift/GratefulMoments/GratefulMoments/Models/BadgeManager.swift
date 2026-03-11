//
//  BadgeManager.swift
//  GratefulMoments
//
//  Created by hh on 11/03/2026.
//

import Foundation
import SwiftData

@MainActor
class BadgeManager {
    private var modelContainer: ModelContainer
    
    init(modelContainer: ModelContainer) {
        self.modelContainer = modelContainer
    }
    
    func loadBadgesIfNeeded() throws {
        let context = modelContainer.mainContext
        var fetchDescriptor = FetchDescriptor<Badge>()
        fetchDescriptor.fetchLimit = 1
        let existingBadges = try context.fetch(fetchDescriptor)
        if existingBadges.isEmpty {
            for details in BadgeDetails.allCases {
                context.insert(Badge(details: details))
            }
        }
    }
    
}
