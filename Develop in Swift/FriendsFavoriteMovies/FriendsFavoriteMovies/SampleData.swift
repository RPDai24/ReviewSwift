//
//  SampleData.swift
//  FriendsFavoriteMovies
//
//  Created by hh on 06/03/2026.
//

import Foundation
import SwiftData

@MainActor
class SamepleData {
    static let shared = SamepleData()
    
    let modelContainer: ModelContainer
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    private init() {
        let schema = Schema([
            Friend.self,
            Movie.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch  {
            fatalError("Could not create ModelContainer: \(error)")
        }


    }
}
