//
//  ViewController.swift
//  basic_4.4_UICollectionView
//
//  Created by 彭程 on 2020/2/12.
//  Copyright © 2020 彭程. All rights reserved.
//

import UIKit


let kNormalCellID =  "kNormalCellID"
let kHeaderViewID = "kHeaderViewID"
let kFootViewID = "kFootViewID"
class ViewController: UIViewController {
    
    
    private lazy var  collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        //item 的尺寸
        layout.itemSize = CGSize(width: 100, height: 100)
        
        layout.minimumLineSpacing = 10 // 最小行间距
        layout.minimumInteritemSpacing = 10 //每列最小间距
        
        // section 边距
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        let collectionView = UICollectionView(frame:  self.view.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.purple
        collectionView.dataSource = self
        collectionView.delegate = self
        // register
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: kNormalCellID)
        
        
        // MARK: -  每个section 的头试图
        // 头试图尺寸
        
        layout.headerReferenceSize = CGSize(width: self.view.bounds.width, height: 100)
        
        layout.footerReferenceSize = CGSize(width: self.view.bounds.width, height: 100)
        
        //register
        collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: kHeaderViewID)
        
//              collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: kFootViewID)
        
        return collectionView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(collectionView)
    }
}
extension ViewController:UICollectionViewDataSource{
    // 返回sections 的数量
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // 返回 每一个section 对应的item 数量
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kNormalCellID, for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
    }
    


        
      func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
         // 1.取出section的HeaderView
         let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: kHeaderViewID, for: indexPath)
         

         return headerView
         
     
            
    }
 
}
extension ViewController: UICollectionViewDelegateFlowLayout{
    // 动态控制每一个item 大小
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row%2 == 0{
            return CGSize(width: 50, height: 50)
        }else{
            return CGSize(width: 100, height: 100)

        }
    }
    
}
