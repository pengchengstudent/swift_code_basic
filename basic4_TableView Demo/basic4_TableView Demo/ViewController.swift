//
//  ViewController.swift
//  basic4_TableView Demo
//
//  Created by 彭程 on 2020/2/5.
//  Copyright © 2020 彭程. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var slider: UISlider!
    var sliderValue :Float = 0
    // MARK: - value 是 0-1
    @IBAction func sliderChange(_ sender: UISlider) {
        print("value:\(sender.value)")
        sliderValue = sender.value
        tableView.reloadData()
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController:UITableViewDelegate{

}

extension ViewController:UITableViewDataSource{
    // MARK: - numberOfRowsInSection  section(切片) 条数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    // MARK: -  indexPath 当前section 的 index
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style:.default
            , reuseIdentifier: "Cell")
        //   let label = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 44))
        
        cell.textLabel?.text = String((indexPath.row+1)*Int(sliderValue*100))
        cell.layoutSubviews()  // ios8 之后 会不显示 iOS 8下运行就会把这个label的size设置(0, 0)从而不能正确显示
//        print("frame.width:\(cell.contentView.frame.width),frame.hegith:\(cell.contentView.frame.height)")
//        print("label.width:\(label.frame.width),label.hegith:\(label.frame.height)")
//        cell.contentView.backgroundColor = UIColor.red
//        label.backgroundColor = UIColor.purple
//        label.text = String((indexPath.row+1)*Int(sliderValue*10))
//
//
//        cell.contentView.addSubview(label)
        return cell

    }


}

