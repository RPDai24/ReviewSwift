//
//  Player.swift
//  ScoreKeeper
//
//  Created by hh on 01/03/2026.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var score: Int
}

extension Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.name == rhs.name && lhs.score == rhs.score
    }
    
}
