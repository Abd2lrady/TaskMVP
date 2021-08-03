//
//  CategoriesAPI+TargetType.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 27/07/2021.
//

import Foundation
import Moya

extension CategoriesTarget: TargetType {
    var baseURL: URL {
        guard let base = URL(string: NetworkManager.shared.networkConfig.baseUrl) else {
            fatalError("wrong baseURL")
        }
        return base
    }
    
    var path: String {
        switch self {
        case .getCategories:
            let path = "/api/dashboard/mobile/subjects"
            return path
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getCategories:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .getCategories:
            return .requestPlain
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}
