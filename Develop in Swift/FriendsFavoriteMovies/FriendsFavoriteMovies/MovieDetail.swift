//
//  MovieDetail.swift
//  FriendsFavoriteMovies
//
//  Created by hh on 06/03/2026.
//

import SwiftUI

struct MovieDetail: View {
    @Bindable var movie:Movie
    
    var body: some View {
        Form {
            TextField("Movie title", text: $movie.title)
            
            DatePicker("Release date", selection: $movie.releaseDate, displayedComponents: .date)
        }

    }
}

#Preview {
    MovieDetail(movie: SamepleData.shared.movie)
    
}
