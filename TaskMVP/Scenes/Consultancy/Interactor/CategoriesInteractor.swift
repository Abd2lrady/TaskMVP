//
//  CategoriesInteractor.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 31/07/2021.
//

import Foundation
import Moya

class CategoriesInteractor {
    var categoriesProvider = MoyaProvider<CategoriesAPI>()
    
    func getCategories(completionHandler: @escaping([Category]?)-> Void) {
        categoriesProvider.request(.getCategories) { response in
            switch response {
            case .success(let categoriesResponse):
                do {
                    let categories = try JSONDecoder().decode(Categories.self, from: categoriesResponse.data)
                    print("interactor got ")
                    print(categories)
                    completionHandler(categories.data)
                } catch {
                    print("error parsing")
                }
            case .failure:
                print("error response")
            }
        }
    }
}
