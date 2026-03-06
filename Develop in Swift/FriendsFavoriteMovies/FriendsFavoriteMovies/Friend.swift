//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by hh on 05/03/2026.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
