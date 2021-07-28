//
//  AppCoordinator.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 28/07/2021.
//

import UIKit
class AppCoordinator: Coordinatable {
    
    var appWindow: UIWindow
    var navController: UINavigationController
    var initialView: UIViewController
    
    init(window: UIWindow, root: UINavigationController, initialView: UIViewController) {
        self.navController = root
        self.initialView = initialView
        self.appWindow = window
    }
    
    func start() {
        appWindow.rootViewController = navController
        navController.pushViewController(initialView, animated: true)
        appWindow.makeKeyAndVisible()
    }
}
