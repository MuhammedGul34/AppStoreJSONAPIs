//
//  AppsSearchControllerCollectionViewController.swift
//  AppStoreJSONApis
//
//  Created by Muhammed Gül on 5.12.2022.
//

import UIKit


class AppsSearchController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .red
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
