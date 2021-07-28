//
//  AppCoordinator+Coordinatable.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 28/07/2021.
//

extension AppCoordinator: Coordinatable {
    
    func start() {
        appWindow.rootViewController = navController
        navController.pushViewController(initialView,
                                         animated: true)
        appWindow.makeKeyAndVisible()
    }
}
