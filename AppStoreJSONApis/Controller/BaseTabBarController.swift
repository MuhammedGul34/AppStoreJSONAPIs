//
//  BaseTabBarController.swift
//  AppStoreJSONApis
//
//  Created by Muhammed Gül on 5.12.2022.
//

import UIKit

class BaseTabBarController : UITabBarController {
    // 1 - create Today Controller
    // 2 - refactor our repeated logic inside of vieWdidload
    // 3 - Maybe introduce our Appsearch controller
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavController(viewController: TodayController(), title: "Today", imageName: "today_icon"),
            createNavController(viewController: AppsPageController(), title: "Apps", imageName: "apps"),
            createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search"),
        ]
    }
    
     private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        
        
        tabBar.tintColor = .systemBlue
        UITabBar.appearance().backgroundColor = .systemGray6
        UINavigationBar.appearance().backgroundColor = .systemGray6
    
        
        
        return navController
        
    }
}
