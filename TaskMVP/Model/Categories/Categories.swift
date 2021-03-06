//
//  Categories.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 27/07/2021.
//

import Foundation

struct Categories: Codable {
    var data: [Category]
}

extension Categories {
    func setCategory(with index: Int) -> Category {
        return data[index]
    }
}
