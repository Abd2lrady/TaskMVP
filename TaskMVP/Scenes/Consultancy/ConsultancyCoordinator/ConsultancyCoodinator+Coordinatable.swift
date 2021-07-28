//
//  ConsultancyCoodinator+Coordinatble.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 28/07/2021.
//

import Foundation

extension ConsultancyCoordinator: Coordinatable {
    func start() {
        let view = ConsultancyVC()
        router.push(view: view, animated: true)
    }
}
