//
//  GameUIButtons.swift
//  xo
//
//  Created by Александр Николаев on 01.05.2022.
//

import UIKit

class GameUIButtons: UIButton {
    override func setTitle(_ title: String?, for state: UIControl.State) {
        super.setTitle(title, for: state)
        if title == "X"{
            self.setTitleColor(.red, for: .normal)
        }else{
            self.setTitleColor(.blue, for: .normal)
        }
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = 0   /// радиус закругления закругление
        self.layer.borderWidth = 2.0   // толщина обводки
        self.layer.borderColor = UIColor.blue.cgColor // цвет обводки
        self.clipsToBounds = true  // не забудь это, а то не закруглиться
        self.tintColor = .red
        self.setTitleColor(.red, for: .normal)
        self.titleLabel!.font = UIFont.boldSystemFont(ofSize: 200)
    }

}
