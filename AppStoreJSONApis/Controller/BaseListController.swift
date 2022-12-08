//
//  BaseListController.swift
//  AppStoreJSONApis
//
//  Created by Muhammed Gül on 8.12.2022.
//

import UIKit

class BaseListController: UICollectionViewController {
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
