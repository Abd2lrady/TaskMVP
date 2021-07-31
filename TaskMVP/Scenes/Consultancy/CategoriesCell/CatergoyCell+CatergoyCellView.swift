//
//  CatergoyCell+CategoryCellPresentable.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 29/07/2021.
//

import UIKit

extension CategoriesCell: CategoryCellView {
    func setImage(with: String) {
//        self.imgView.image = UIImage(data: data)
    }
    
    func setTitle(with title: String) {
        self.nameLabel.text = title
    }
}
