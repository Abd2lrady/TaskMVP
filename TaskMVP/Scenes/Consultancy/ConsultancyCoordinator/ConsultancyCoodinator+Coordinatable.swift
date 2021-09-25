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
        view.presenter = ConsultancyPresenter(with: view)
//        view.presenter.viewLoaded()
        router.push(view: view, animated: true)
    }
}
