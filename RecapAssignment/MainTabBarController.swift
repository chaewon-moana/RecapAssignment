//
//  MainTabBarController.swift
//  RecapAssignment
//
//  Created by cho on 1/28/24.
//

import UIKit

protocol CodeBase {
    func setAddView()
    func setAttribute()
    func setLayout()
}

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let searchVC = UINavigationController(rootViewController: SearchViewController())
        let profileVC = UINavigationController(rootViewController: ProfileViewController())

        searchVC.tabBarItem = UITabBarItem(title: "검색", image: UIImage(systemName: "magnifyingglass"), tag: 0)
        profileVC.tabBarItem = UITabBarItem(title: "설정", image: UIImage(systemName: "person"), tag: 1)
        
        tabBar.tintColor = .white
        viewControllers = [searchVC, profileVC]
    }
    



}
