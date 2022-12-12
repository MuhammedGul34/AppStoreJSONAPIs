//
//  AppDetailController.swift
//  AppStoreJSONApis
//
//  Created by Muhammed Gül on 12.12.2022.
//

import UIKit

class AppDetailController: BaseListController {
    
    var appId : String! {
        didSet {
            print("Here is my appId:", appId)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
    }
}
