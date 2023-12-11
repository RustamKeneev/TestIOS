//
//  MainViewController.swift
//  Test
//
//  Created by Rustam Keneev on 9/12/23.
//

import Foundation
import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let home = HomeViewController()
        let profile = ProfileViewController()

        home.title = "Главная"
        profile.title = "Профиль"

        viewControllers = [home, profile]
        tabBar.items?[0].image = UIImage(named: "home")
        tabBar.items?[1].image = UIImage(named: "profile")
        
        tabBar.layer.masksToBounds = true
        tabBar.isTranslucent = true
        tabBar.layer.cornerRadius = 16
        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        UITabBar.appearance().standardAppearance = tabBarAppearance
        
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }

    }
    
}
