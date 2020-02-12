//
//  ViewController.swift
//  uber
//
//  Created by 彭程 on 2020/2/8.
//  Copyright © 2020 彭程. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var collectionVew: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: kItemW, height: kItemH)
        layout.minimumLineSpacing = 0 // 这个每一行的高度
        layout.minimumInteritemSpacing = kItemMarin
        // minimumInteritemSpacing只是  两个cell 中间的间隔 , 如果两个cell 的宽度小于 self.view.bounds.width, 少出来的部分就是 中间分割边距
        // 如果要设置两边的边距  可以通过 设置 section 的内边距 ,  而 kItemW 留了三个边距  , 所以左边距 一个kItemMarin   ,右边距是 一个 kItemMarin
        layout.sectionInset = UIEdgeInsets(top: 0, left: kItemMarin, bottom: 0, right: kItemMarin)
        layout.headerReferenceSize = CGSize(width: self.view.bounds.width, height: kItemHeaderH)
        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.white

        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false

        // item Head

        collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: kItemHeadCellID)
            collectionView.register(UINib(nibName: String(describing: CollectionVeiwNormalCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: CollectionVeiwNormalCell.self))
        return collectionView

    }()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

