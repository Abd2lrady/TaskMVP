//
//  ConsutalncyPresentable.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 29/07/2021.
//

import UIKit

protocol ConsultancyView: AnyObject {
    var categoriesDataSource: UICollectionViewDataSource? {get set}
    func categoriesLoaded()
    func networkError(error: Error)
    func showLoadingIndicator()
    func hideLoadingIndicator()
}
