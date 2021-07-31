//
//  ConsultancyPresenter.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 29/07/2021.
//

import Foundation

class ConsultancyPresenter {
    var view: ConsultancyView?
    var interactor: CategoriesInteractor?
    var categories = [Category]()
   
    var categoriesCount: Int {
           return categories.count
    }
    
    init(with view: ConsultancyView) {
        self.view = view
    }
    
    func getCategories() {
        interactor = CategoriesInteractor()
        interactor?.getCategories(completionHandler: { [weak self] categories in
            guard let categories = categories else {return}
            self?.categories = categories
            self?.view?.categoriesLoaded()
        })
    }
    
   
    
    func configCategoryCell(cell: CategoryCellView, for index: Int) {
        let category = categories[index]
        cell.setTitle(with: category.title)
        cell.setImage(with: category.file?.path ?? "")
    }

    func viewLoaded() {
        getCategories()
    }
}