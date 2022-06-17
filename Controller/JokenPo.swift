//
//  JokenPo.swift
//  Marcelo.RockPaperScissors
//
//  Created by Marcelo Silva on 28/04/22.
//

import Foundation

class JokenPo {
 
    var playerOne: Player
    var playerTwo: Player
    
    internal init(playerOne: Player, playerTwo: Player) {
        self.playerOne = playerOne
        self.playerTwo = playerTwo
    }
    
    func finishGame(){
        
        switch(playerOne.roundType, playerTwo.roundType){
        case (.scissor, .paper) :
            self.playerOne.score += 1
        case (.paper, .scissor) :
            self.playerTwo.score += 1
        case (.rock, .paper) :
            self.playerOne.score += 1
        case (.paper, .rock) :
            self.playerTwo.score += 1
        case (.rock, .scissor) :
            self.playerOne.score += 1
        case (.scissor, .rock) :
            self.playerTwo.score += 1
        default:
            print("Draw")
        }
    }
    
    func finishGame2(){
        if playerOne.roundType == playerTwo.roundType {
            return
        }
        
        switch(playerOne.roundType, playerTwo.roundType){
        case (.scissor, .paper) :
            self.playerOne.score += 1
            
        case (.paper, .rock) :
            self.playerOne.score += 1
       
        case (.rock, .scissor) :
            self.playerOne.score += 1
        
        default:
            self.playerTwo.score += 1
        }
    }
    
}
