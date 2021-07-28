//
//  Router+Routable.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 28/07/2021.
//
import UIKit

extension Router: Routable {
    
    func push(view: UIViewController,
              animated: Bool) {
        navController.pushViewController(view,
                                         animated: animated)
    }
    
    func pop(view: UIViewController,
             animated: Bool) {
        navController.popViewController(animated: animated)
    }
    
    func popTo(view: UIViewController,
               animated: Bool) {
        navController.popToViewController(view,
                                          animated: animated)
    }
    
    func popToRoot(animated: Bool) {
        navController.popToRootViewController(animated: animated)
    }
}
