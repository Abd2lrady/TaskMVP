//
//  CategoriesInteractor.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 31/07/2021.
//

import Foundation
import Moya

class CategoriesInteractor {
    
    let networkManger = NetworkManager()

    var categoriesProvider = MoyaProvider<CategoriesTarget>()
    
    func getCategories(completionHandler: @escaping([Category]?) -> Void) {
        networkManger.getCategories { (result, statusCode) in
            switch result {
            case .success(let response):
                completionHandler(response.data)
            case .failure(let error):
                print(error.localizedDescription)
                print(statusCode ?? "")
            }
        }

//        categoriesProvider.request(.getCategories) { response in
//            switch response {
//            case .success(let categoriesResponse):
//                do {
//                    let categories = try JSONDecoder().decode(Categories.self, from: categoriesResponse.data)
//                    print("interactor got ")
//                    print(categories)
//                    completionHandler(categories.data)
//                } catch {
//                    print("error parsing")
//                }
//            case .failure:
//                print("error response")
//            }
//        }
    }
}
