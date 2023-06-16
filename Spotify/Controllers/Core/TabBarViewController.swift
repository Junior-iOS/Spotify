//
//  TabBarViewController.swift
//  Spotify
//
//  Created by NJ Development on 15/06/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeVc = HomeViewController()
        let searchVC = SearchViewController()
        let libraryVC = LibraryViewController()
        
        homeVc.title = "Browse"
        searchVC.title = "Search"
        libraryVC.title = "Library"
 
        [homeVc, searchVC, libraryVC].forEach({ $0.navigationItem.largeTitleDisplayMode = .always })
        
        let homeNavigation = UINavigationController(rootViewController: homeVc)
        let searchNavigation = UINavigationController(rootViewController: searchVC)
        let libraryNavigation = UINavigationController(rootViewController: libraryVC)
        
        homeNavigation.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        searchNavigation.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        libraryNavigation.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 3)
        
        [homeNavigation, searchNavigation, libraryNavigation].forEach({ $0.navigationBar.prefersLargeTitles = true })
        
        setViewControllers([homeNavigation, searchNavigation, libraryNavigation], animated: false)
    }

}
