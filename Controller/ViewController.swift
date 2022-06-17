//
//  ViewController.swift
//  Marcelo.RockPaperScissors
//
//  Created by Marcelo Silva on 27/04/22.
//

import UIKit

class ViewController: UIViewController{
    
    var playerOne: Player = Player(name: "", score: 0)
    var playerTwo: Player = Player(name: "marcelo", score: 0)
    var jokenPo: JokenPo?
    var images: [RoundType:UIImage] = [
        .rock:#imageLiteral(resourceName: "RockLeft"),
        .paper:#imageLiteral(resourceName: "Paper"),
        .scissor:#imageLiteral(resourceName: "ScissorLeft")
        
//#imageLiteral(resourceName:"questionMark")
//
    ]

    @IBOutlet weak var imageTop: UIImageView!
    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    @IBOutlet weak var imageLeft: UIImageView!
    @IBOutlet weak var imageCenter: UIImageView!
    @IBOutlet weak var imageRight: UIImageView!
    @IBOutlet weak var scoreLeftLabel: UILabel!
    @IBOutlet weak var ScoreLeftValue: UILabel!
    @IBOutlet weak var scoreRightLabel: UILabel!
    @IBOutlet weak var scoreRightValue: UILabel!
    @IBOutlet weak var buttonFight: UIButton!
    @IBOutlet weak var newGameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.buttonFight.layer.cornerRadius = 20
        self.newGameButton.layer.cornerRadius = 20
    }

    @IBAction func tapeedNewGameBUtton(_ sender: UIButton) {
        self.resetGame()
        print("New game Button Was Pressed")
    }
    
    
    @IBAction func tappedFightBUtton(_ sender: UIButton) {
        self.setupGame()
        self.startGame()
        print("Fight Button Was Pressed")
    }
}

extension ViewController{

    func setupPic() {
        self.imageLeft.image = self.images[self.playerOne.roundType ?? .paper]
        self.imageRight.image = self.images[self.playerTwo.roundType ?? .paper]
        self.imageRight.transform = CGAffineTransform(scaleX: -1, y: 1)
    }
    
    func setupGame() {
        self.playerOne.setChoice()
        self.playerTwo.setChoice()
    }
    
    func startGame() {
        self.jokenPo = JokenPo(playerOne: self.playerOne, playerTwo: self.playerTwo)
        self.setupPic()
        self.jokenPo?.finishGame2()
        self.resumeScore()
    }
    
    func resumeScore() {
        self.scoreRightValue.text = String(self.playerTwo.score)
        self.ScoreLeftValue.text = String(self.playerOne.score)
    }
    
    func resetGame() {
        self.playerOne.resetScore()
        self.playerTwo.resetScore()
        self.resumeScore()
        self.setupPic()
        self.imageLeft.image = #imageLiteral(resourceName:"questionMark")
        self.imageRight.image = #imageLiteral(resourceName:"questionMark")
        self.imageRight.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    

    
}
        
      
            

    
    



