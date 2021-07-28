//
//  AppCoordinator+Coordinatable.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 28/07/2021.
//
import UIKit

extension AppCoordinator: Coordinatable {
    func start() {
        let navController = UINavigationController()
        let router = Router(with: navController)
        let consultancyCoordinator = ConsultancyCoordinator(with: router)
        consultancyCoordinator.start()
        appWindow.rootViewController = navController
        appWindow.makeKeyAndVisible()
    }
}
