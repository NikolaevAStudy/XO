//
//  Game.swift
//  xo
//
//  Created by Александр Николаев on 28.02.2022.
//

import Foundation


class Game{
    private var data = [0:" ",1:" ",2:" ",3:" ",4:" ",5:" ",6:" ",7:" ",8:" "]
    private var data1 = [0:0,1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8]
    //0,1,2
    //0,4,8
    //0,3,6
    //1,4,7
    //2,5,8
    //2,4,6
    //3,4,5
    //6,7,8
    func newGame()
    {
        data = [0:" ",1:" ",2:" ",3:" ",4:" ",5:" ",6:" ",7:" ",8:" "]
        data1 = [0:0,1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8]
        i = 0
    }
    var i = 0
    
    func checkGame() -> Int{
        if (data[0] == "X" && data[1] == "X" && data[2] == "X") ||
            (data[0] == "X" && data[4] == "X" && data[8] == "X") ||
            (data[0] == "X" && data[3] == "X" && data[6] == "X") ||
            (data[1] == "X" && data[4] == "X" && data[7] == "X") ||
            (data[2] == "X" && data[5] == "X" && data[8] == "X") ||
            (data[2] == "X" && data[4] == "X" && data[6] == "X") ||
            (data[3] == "X" && data[4] == "X" && data[5] == "X") ||
            (data[6] == "X" && data[7] == "X" && data[8] == "X")
        {
            return 9
        }
        if (data[0] == "O" && data[1] == "O" && data[2] == "O") ||
            (data[0] == "O" && data[4] == "O" && data[8] == "O") ||
            (data[0] == "O" && data[3] == "O" && data[6] == "O") ||
            (data[1] == "O" && data[4] == "O" && data[7] == "O") ||
            (data[2] == "O" && data[5] == "O" && data[8] == "O") ||
            (data[2] == "O" && data[4] == "O" && data[6] == "O") ||
            (data[3] == "O" && data[4] == "O" && data[5] == "O") ||
            (data[6] == "O" && data[7] == "O" && data[8] == "O")
        {
            return 10
        }
        if data1.count==1{
            return 11
        }
        else{
            return 12
        }
    }
    
    func getZero() -> Int {
        if data1.count > 1{
            data.updateValue("X", forKey: i)
            data1.removeValue(forKey: i)
            let item = data1.shuffled().randomElement()!.value
            data1.removeValue(forKey: item)
            data.updateValue("O", forKey: item)
            return item
        }
        else {
            return 9
        }
    }
    
}
