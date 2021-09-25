//
//  ConsultancyVC+Presentable.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 31/07/2021.
//

import Foundation
import Toast

extension ConsultancyVC: ConsultancyView {
    func categoriesLoaded() {
        categoriesCV.reloadData()
//        hideLoadingIndicator()
    }
    
    func showLoadingIndicator() {
        self.view.makeToastActivity(.center)
    }
    
    func hideLoadingIndicator() {
        self.view.hideAllToasts(includeActivity: true, clearQueue: true)
    }
    
    func networkError(error: Error) {
        self.view.makeToast(error.localizedDescription, duration: 3.0, position: .center)
    }
}
