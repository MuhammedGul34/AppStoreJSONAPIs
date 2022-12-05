//
//  BaseTabBarController.swift
//  AppStoreJSONApis
//
//  Created by Muhammed Gül on 5.12.2022.
//

import UIKit

class BaseTabBarController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redViewController = UIViewController()
        redViewController.view.backgroundColor = .white
        redViewController.navigationItem.title = "Apps"
        
        let redNavController = UINavigationController(rootViewController: redViewController)
        redNavController.tabBarItem.title = "Apps"
        redNavController.tabBarItem.image = UIImage(named: "apps")
        redNavController.navigationBar.prefersLargeTitles = true
        
        let blueViewController = UIViewController()
        blueViewController.view.backgroundColor = .white
        blueViewController.navigationItem.title = "Search"
        
        let blueNavController = UINavigationController(rootViewController: blueViewController)
        blueNavController.tabBarItem.title = "Search"
        blueNavController.navigationBar.prefersLargeTitles = true
        blueNavController.tabBarItem.image = UIImage(named: "search")
        
        tabBar.tintColor = .systemBlue
        UITabBar.appearance().backgroundColor = .systemGray6
        UINavigationBar.appearance().backgroundColor = .systemGray6
    
        
        viewControllers = [
            redNavController,
            blueNavController,
        ]
    }
}
