//
//  ConsultancyVC+Presentable.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 31/07/2021.
//

import Foundation
extension ConsultancyVC: ConsultancyView {
    func categoriesLoaded() {
        categoriesCV.reloadData()
    }
}
