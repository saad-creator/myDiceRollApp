//
//  ViewController.swift
//  Dicee
//
//  Created by Apple on 23/12/2019.
//  Copyright © 2019 saad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["Dice1", "Dice2", "Dice3", "Dice4", "Dice5", "Dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        
        diceImageView2.image = #imageLiteral(resourceName: "Dice2")
        diceImageView1.image = #imageLiteral(resourceName: "Dice6")
        diceImageView1.alpha = 2
        
        
        //updateDiceImage()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImage()
        
    }
    
    func updateDiceImage(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
        
    }
    
}

