//
//  ContentView.swift
//  FriendsFavouriteMovies
//
//  Created by hh on 02/08/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort:\Movie.title) private var Movies: [Movie]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(Movies) { movie in
                    NavigationLink {
                        MovieDetail(movie: movie)
                    } label: {
                        Text(movie.title)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .navigationTitle("Movies")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Movie", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Movie(title: "New Movie", releaseDate: .now)
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(Movies[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
