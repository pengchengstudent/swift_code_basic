//
//  ViewController.swift
//  basic_3_秒表
//
//  Created by 彭程 on 2020/2/5.
//  Copyright © 2020 彭程. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    
    var time = 0
    
    var timer : Timer?
    
    var isPlayed:Bool = false
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @objc func processTimer(){
        time+=1
        displayLabel.text = String(time)
        print("processTimer")
    }
    
    @IBAction func actionPlay(_ sender: UIBarButtonItem) {
        guard !isPlayed else {
            timer?.invalidate()
            isPlayed = false
            return
        }
      timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (Timer) in
            self.processTimer()
        }
        timer?.fire()
        isPlayed = true


    }
    
    @IBAction func rollAction(_ sender: Any) {
        roll()
    }
    
    @IBAction func actionStop(_ sender: UIBarButtonItem) {
        timer?.invalidate()
        isPlayed = false
    }
    

    @IBAction func actionReset(_ sender: UIBarButtonItem) {
        timer?.invalidate()
        isPlayed = false
        time = 0
        displayLabel.text = String()
    }
}

