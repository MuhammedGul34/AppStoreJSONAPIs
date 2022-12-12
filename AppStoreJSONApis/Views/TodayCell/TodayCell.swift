//
//  TodayCell.swift
//  AppStoreJSONApis
//
//  Created by Muhammed Gül on 12.12.2022.
//

import UIKit

class TodayCell: UICollectionViewCell {
    
    let imageView = UIImageView(image: UIImage(named: "garden"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        
        addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        imageView.centerInSuperview(size: .init(width: 250, height: 250))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
