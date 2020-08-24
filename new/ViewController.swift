//
//  ViewController.swift
//  new
//
//  Created by Yana on 04.05.2020.
//  Copyright © 2020 Мак. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var PlayerScoreLabel: UILabel!
    @IBOutlet weak var CPUScoreLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize the numbers
        let leftRandomNumberCard = Int.random(in: 2...14)
        let rightRandomNumberCard = Int.random(in: 2...14)
        
        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumberCard)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumberCard)")
        
        // Compare the randome numbers
        if leftRandomNumberCard > rightRandomNumberCard {
            
            // Right side wins
            playerScore += 1
            PlayerScoreLabel.text = String(playerScore)
            
        } else if rightRandomNumberCard > leftRandomNumberCard {
            
            // Left side wins
            cpuScore += 1
            CPUScoreLabel.text = String(cpuScore)
            
        }
    }
}

