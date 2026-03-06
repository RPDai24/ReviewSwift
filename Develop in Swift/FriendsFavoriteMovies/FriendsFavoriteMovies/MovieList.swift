//
//  MovieList.swift
//  FriendsFavoriteMovies
//
//  Created by hh on 06/03/2026.
//

import SwiftUI
import SwiftData

struct MovieList: View {
    @Query(sort: \Movie.title) private var movies: [Movie]
//    @Environment(\.modelContext) private var context
    
    var body: some View {
        List {
            ForEach(movies) { movie in
                Text(movie.title)
//                Text("\(movie.releaseDate)")
            }
        }
    }
}

#Preview {
    MovieList()
        .modelContainer(SamepleData.shared.modelContainer)
}
