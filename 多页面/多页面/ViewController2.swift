//
//  ViewController2ViewController.swift
//  basic4.2_segue多页面
//
//  Created by 彭程 on 2020/2/6.
//  Copyright © 2020 彭程. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var message:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = message

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
