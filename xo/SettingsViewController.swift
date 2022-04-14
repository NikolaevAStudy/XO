//
//  SettingsViewController.swift
//  xo
//
//  Created by Александр Николаев on 11.03.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var switcherPlayers: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchPlayers(_ sender: UISwitch){
   /*     let switcher = sender.isOn
        print(switcher)
        if(switcher){
            gameSettings.init(players: 2)
            
        }
        else{
            gameSettings.init(players: 1)
        }*/
    }
    

    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 
    }
    

}
