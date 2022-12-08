//
//  AppsPageHeader.swift
//  AppStoreJSONApis
//
//  Created by Muhammed Gül on 8.12.2022.
//

import UIKit

class AppsPageHeader: UICollectionReusableView {
    
    let appHeaderHorizontalController = AppsHeaderHorizontalController()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        addSubview(appHeaderHorizontalController.view)
        appHeaderHorizontalController.view.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
