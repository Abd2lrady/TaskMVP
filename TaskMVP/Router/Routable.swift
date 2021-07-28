//
//  Routable.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 28/07/2021.
//

import UIKit

protocol Routable: class {
    func push(view: UIViewController,
              animated: Bool)
    
    func pop(view: UIViewController,
             animated: Bool)
    
    func popTo(view: UIViewController,
               animated: Bool)
    
    func popToRoot(animated: Bool)
}
