//
//  CategoriesDataSource+UITableViewDataSource.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady

import UIKit

extension CategoriesDataSource: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let category = getCategory(at: indexPath)
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCell",
                                                            for: indexPath) as? CategoriesCell
                else { fatalError("can`t deqeue the cell") }
        cell.setTitle(with: category.title)
        return cell
    }
}
