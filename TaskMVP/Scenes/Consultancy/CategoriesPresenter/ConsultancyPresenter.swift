//
//  ConsultancyPresenter.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 29/07/2021.
//

import Foundation

class ConsultancyPresenter {
    weak var view: ConsultancyView?
    let interactor: CategoriesInteractor?
    var categories = [Category]()
   
    var categoriesCount: Int {
           return categories.count
    }
    
    init(with view: ConsultancyView) {
        self.view = view
        interactor = CategoriesInteractor()
    }
    
    func getCategories() {
        interactor?.getCategories(completionHandler: {[weak self] categories, error  in
            if let categories = categories {
                self?.categories = categories
                self?.view?.categoriesDataSource = CategoriesDataSource(categories: categories)
                self?.view?.categoriesLoaded()
                self?.view?.hideLoadingIndicator()
            }
            if let error = error {
                self?.view?.networkError(error: error)
                self?.view?.hideLoadingIndicator()
            }
                })
//            print("hello interactor")
//            print(categories)
//        })
//        interactor?.getCategories(completionHandler: { [weak self] categories in
//            guard let categories = categories else {
//                return}
//            self?.categories = categories
//            self?.view?.categoriesLoaded()
//        })
    }
    
//    func configCategoryCell(cell: CategoryCellView, for index: Int) {
//        let category = categories[index]
//        cell.setTitle(with: category.title)
//        cell.setImage(with: category.file?.path ?? "")
//    }

    func viewLoaded() {
        view?.showLoadingIndicator()
        getCategories()
    }
}
