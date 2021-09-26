//
//  CategoriesDataSource.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady

import Foundation

class CategoriesDataSource: NSObject {
    let categories: [Category]
    
    init(categories: [Category]) {
        self.categories = categories
    }
    
    func getCategory(at indexpath: IndexPath) -> Category {
        return categories[indexpath.row]
    }
}
