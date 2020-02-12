//
//  ViewController.swift
//  base4_1 临时存储
//
//  Created by 彭程 on 2020/2/5.
//  Copyright © 2020 彭程. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        if let name = UserDefaults.standard.object(forKey: "name") as? String {
            textField.text = name
        }
    }

    @IBAction func saveAction(_ sender: UIButton) {
        
        UserDefaults.standard.set(textField.text, forKey: "name")
        
        let alert = UIAlertController(title: "提示", message: "保存成功", preferredStyle: UIAlertController.Style.alert)
        let actionEnter = UIAlertAction(title: "确认", style: .default,handler:nil)

        alert.addAction(actionEnter)
        present(alert, animated: true, completion: nil)
        

    }
    
}

