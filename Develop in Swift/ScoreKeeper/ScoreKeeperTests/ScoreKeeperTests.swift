//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by hh on 02/03/2026.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    @Test("Reset player scores", arguments: [0, 10, 20, 30])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Elisha", score: 0),
            Player(name: "Andre", score: 5)
        ])
        scoreboard.resetScoresto(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }
    
    @Test("Highest score wins")
    func highestScoreWins() {
        let scoreBoard = Scoreboard(
            players: [
                Player(name: "Elisha", score: 0),
                Player(name: "Andre", score: 4)
            ],
            state: .gameOver,
            doesHighestScoreWin: true
        )
        let winners = scoreBoard.winners
        #expect(winners == [Player(name: "Andre", score: 4)])
    }
    
    @Test("Lowest score wins")
    func lowestScoreWins() {
        let scoreBoard = Scoreboard(
            players: [
                Player(name: "Elisha", score: 0),
                Player(name: "Andre", score: 10),
                Player(name: "Aini", score: 20)
            ],
            state: .gameOver,
            doesHighestScoreWin: false
        )
        let winners = scoreBoard.winners
        #expect(winners == [Player(name: "Elisha", score: 0)])
    }

}
    
