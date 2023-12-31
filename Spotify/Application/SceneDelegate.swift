//
//  SceneDelegate.swift
//  Spotify
//
//  Created by NJ Development on 15/06/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let navVC = UINavigationController(rootViewController: WelcomeViewController())
        navVC.navigationBar.prefersLargeTitles = true
        navVC.viewControllers.first?.navigationItem.largeTitleDisplayMode = .always
        window.rootViewController = AuthManager.shared.isSignedIn ? TabBarViewController() : navVC
        window.makeKeyAndVisible()
        self.window = window
    }
}

