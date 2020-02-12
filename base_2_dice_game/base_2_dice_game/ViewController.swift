//
//  ViewController.swift
//  base_2_dice_game
//
//  Created by 彭程 on 2020/2/5.
//  Copyright © 2020 彭程. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    @IBOutlet weak var rollButton: UIButton!
    
    var imagesName  = ["dice1","dice2","dice3","dice3","dice4","dice5","dice6"]
    private var dice1Index = 0
    private var dice2Index = 0
    

    
    @IBAction func actionRoll(_ sender: Any) {
        roll()
    }
    
  
    
    fileprivate func roll() {
        //  arc4random_uniform 从0 到 5
        dice1Index = Int(arc4random_uniform(6))
        dice2Index = Int((arc4random_uniform(6)))
        dice1ImageView.image = UIImage(named: "dice\(dice1Index+1)")
        dice2ImageView.image = UIImage(named: "dice\(dice2Index+1)")
      //  dice2ImageView.image = UIImage(named: imagesName[dice2Index])
    }
    
    /*
    动作结束的回调  看文档
     motion
     An event-subtype constant indicating the kind of motion. A common motion is shaking, which is indicated by UIEvent.EventSubtype.motionShake.
     event
     An object representing the event associated with the motion.
     */
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
          roll()
        }
    }


}

