//
//  GameViewController.swift
//  xo
//
//  Created by Александр Николаев on 28.02.2022.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet var gameButton: [GameUIButton]!
    lazy var game = Game()
    override func viewDidLoad() {
        super.viewDidLoad()
        newGameButton.isHidden=true
        newGameButton.isEnabled=false
    }

    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0,delay: 1 ,animations: {
            for buttonInd in self.gameButton.indices {
                //self.gameButton[buttonInd].center.x -= 120
                self.gameButton[buttonInd].center.y -= 500
            }
        })
    }
    
    @IBAction func newGameAction(_ sender: UIButton) {
        newGameButton.isHidden=true
        newGameButton.isEnabled=false
        game.newGame()
        for buttonInd in gameButton.indices {
            gameButton[buttonInd].setTitle(" ", for: .normal)
            gameLabel.text = ""
            //gameButton[buttonInd].isEnabled = true
        }
    }
    @IBAction func buttonClick(_ sender: GameUIButton) {
        guard let buttonIndex = gameButton.firstIndex(of: sender) else {return}
        //let buttonIndex = sender.tag
        if gameButton[buttonIndex].title(for: .normal) == " " || gameButton[buttonIndex].title(for: .normal) == nil{
            gameButton[buttonIndex].setTitle("X", for: .normal)
            //gameButton[buttonIndex].isEnabled = false
            //gameButton[buttonIndex].tag
            let ind = getZero(i: buttonIndex)
            if checkGame(ind: ind, buttonInd: buttonIndex){
                newGameButton.isHidden=false
                newGameButton.isEnabled=true
                //gameButton[buttonIndex].isEnabled = false
            }
            if ind != 9 && ind != 10{
                if gameButton[ind].title(for: .normal) == " " || gameButton[ind].title(for: .normal) == nil{
                    gameButton[ind].setTitle("O", for: .normal)
                }
                else {
                    return
                }
            }
            else{
                return
            }
        }
        //gameButton[sender.tag].isEnabled = false
    }
    private func getZero(i:Int) -> Int {
        game.i=i
        return game.getZero()
    }
    private func checkGame(ind:Int,buttonInd:Int) -> Bool{
        var checkInd = ind
        checkInd = game.checkGame()
        if checkInd == 9{
            gameLabel.text = "Победа X"
            //gameButton[buttonInd].isEnabled = false
            return true
        }
        if checkInd == 10{
            gameLabel.text = "Победа O"
            //gameButton[ind].isEnabled = false
            return true
        }
        if checkInd == 11{
            gameLabel.text = "Ничья"
            //gameButton[ind].isEnabled = false
            return true
        }
        return false
    }
    
    
}
