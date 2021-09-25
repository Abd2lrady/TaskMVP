//
//  ConsutalncyPresentable.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 29/07/2021.
//

import Foundation

protocol ConsultancyView: AnyObject {
    func categoriesLoaded()
    func networkError(error: Error)
    func showLoadingIndicator()
    func hideLoadingIndicator()
}
