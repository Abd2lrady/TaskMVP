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
                if (200...299 ~= response.statusCode) {
                    do {
                        let decodedResponse = try JSONDecoder()
                            .decode(APIResponse<[Category]>.self,
                                    from: response.data)
                        completion(.success(decodedResponse), response.statusCode)
                    } catch {
                        completion(.failure(NetworkError.parseError), response.statusCode)
                    }
                } else {
                    // 300-399 ,400-499
                    do {
                        var businessError = try JSONDecoder().decode(NetworkError.self, from: response.data)
                        businessError.type = .business
                        completion(.failure(businessError), response.statusCode)
                    } catch {
                        completion(.failure(NetworkError.parseError), response.statusCode)
                    }
                }
            case .failure(let error):
                let customError = NetworkError(error: error)
                completion(.failure(customError), nil)
            }
        }
    }
}
