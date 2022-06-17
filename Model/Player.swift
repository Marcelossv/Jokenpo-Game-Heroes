//
//  Player.swift
//  Marcelo.RockPaperScissors
//
//  Created by Marcelo Silva on 28/04/22.
//

import Foundation

enum RoundType {
    case paper
    case scissor
    case rock
}

enum ResetGame {
    case questionMark
}

class Player {
    let types: [RoundType] = [.paper, .rock, .scissor]
    let types2:[ResetGame] = [.questionMark]
    var roundType: RoundType?
    var resetGame: ResetGame?
    var name: String
    var score: Int
   
    
    internal init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
    
    func setChoice() {
        self.roundType = self.types.randomElement()
    }

    func resetScore() {
        self.score = 0
    }
    
}
