//
//  GameUIButton.swift
//  xo
//
//  Created by Александр Николаев on 28.02.2022.
//

import UIKit

class GameUIButton: UIButton {

    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 5    /// радиус закругления закругление
        self.layer.borderWidth = 3.0   // толщина обводки
        self.layer.borderColor = (UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)).cgColor // цвет обводки
        self.clipsToBounds = true  // не забудь это, а то не закруглиться
        self.tintColor = .black
        self.setTitleColor(.black, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 75)
    }
        
}
