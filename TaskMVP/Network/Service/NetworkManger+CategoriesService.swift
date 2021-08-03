//
//  NetworkManger+CategoriesService.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 02/08/2021.
//

import Foundation
import Moya

extension NetworkManager {
    func getCategories(completion: @escaping (Result<APIResponse<[Category]>, NetworkError>,
                                              StatusCode?) -> Void) {
        provider.request(MultiTarget(CategoriesTarget.getCategories)) { result in
            switch result {
            case .success(let response):
                do {
                    let decodedResponse = try JSONDecoder().decode(APIResponse<[Category]>.self, from: response.data)
                    completion(.success(decodedResponse), response.statusCode)
                } catch {
                    completion(.failure(NetworkError.parseError), response.statusCode)
                }
            case .failure(let error):
                let customError = NetworkError(error: error)
                completion(.failure(customError), nil)
            }
        }
    }
}
