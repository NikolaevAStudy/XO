//
//  GameUIButtons.swift
//  xo
//
//  Created by Александр Николаев on 01.05.2022.
//

import UIKit

class GameUIButtons: UIButton {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = 1    /// радиус закругления закругление
        self.layer.borderWidth = 1.0   // толщина обводки
        self.layer.borderColor = UIColor.blue.cgColor // цвет обводки
        self.clipsToBounds = true  // не забудь это, а то не закруглиться
        self.tintColor = .red
        self.setTitleColor(.red, for: .normal)
        self.titleLabel!.font = UIFont.boldSystemFont(ofSize: 200)
    }

}
