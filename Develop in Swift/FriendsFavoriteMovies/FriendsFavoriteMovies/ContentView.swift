//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by hh on 05/03/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                FriendList()
            }
            
            Tab("Movies", systemImage: "film.stack") {
                MovieList()
            }
        }
    }
}

#Preview {
    ContentView()
//        .modelContainer(for: Friend.self, inMemory: true)
        .modelContainer(SamepleData.shared.modelContainer)
}
