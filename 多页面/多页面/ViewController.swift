//
//  ViewController.swift
//  多页面
//
//  Created by 彭程 on 2020/2/6.
//  Copyright © 2020 彭程. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // MARK: - withIdentifier 是选中 跳转连接线 设置的  Identifier

    @IBAction func goAction(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondView", sender:self) // 代码执行跳转
    }
    // MARK: - 数据传递 prepare这个是跳转钱的准备 description:目的地
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondView"{
            let viewController2:ViewController2 =  segue.destination as! ViewController2
                 // 赋值
            viewController2.message = textField.text
          }
   
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

       self.view.endEditing(true)
       // textField.resignFirstResponder()

    }
    
    
}
// MARK: - 监听键盘的return 键的事件 ,做收起键盘处理
extension ViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       // self.view.endEditing(true)
        textField.resignFirstResponder()
        return true
    }
}

