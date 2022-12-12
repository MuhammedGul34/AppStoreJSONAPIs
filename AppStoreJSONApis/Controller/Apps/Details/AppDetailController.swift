//
//  AppDetailController.swift
//  AppStoreJSONApis
//
//  Created by Muhammed Gül on 12.12.2022.
//

import UIKit

class AppDetailController: BaseListController {
    
    var appId: String! {
        didSet {
            print("Here is my appId:", appId)
            let urlString = "https://itunes.apple.com/lookup?id=\(appId ?? "")"
            Service.shared.fetchGenericsJSONData(urlString: urlString) { (result: SearchResult?, err)  in
                print(result?.results.first?.releaseNotes)
            // this part wont work because of appstore rss builder policy changes
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
    }
}
