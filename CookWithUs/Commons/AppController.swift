//
//  AppController.swift
//  CookWithUs
//
//  Created by Meera R on 9/25/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import Foundation
import Firebase

class AppController{
    
    var rootViewController: UIViewController?
    weak var window: UIWindow?
    
    func prepareForLaunch(window: UIWindow?) {
        self.window = window
        configureFirebase()
        loadHomeScreen()
    }
    
    func configureFirebase() {
        FirebaseApp.configure()
    }
    
    func loadHomeScreen() {
        let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: homeViewController)
        self.rootViewController = navigationController
        window?.rootViewController = self.rootViewController
    }
}
