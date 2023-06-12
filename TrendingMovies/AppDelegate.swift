//
//  AppDelegate.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController(rootViewController: MainViewController())
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }

}

