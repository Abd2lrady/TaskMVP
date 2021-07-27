//
//  CategoriesView+CollectionDelegates.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 27/07/2021.
//

import UIKit

extension CategoriesView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func initCategoriesCV() {
        // loading cell nib file
        let cellNib = UINib(nibName: "CategoriesCell", bundle: .main)
        // register loaded nib file to collection view
        categoriesCV.register(cellNib, forCellWithReuseIdentifier: "CategoriesCell")
        categoriesCV.backgroundColor = .clear
        categoriesCV.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = categoriesCV.dequeueReusableCell(withReuseIdentifier: "CategoriesCell",
                                                          for: indexPath) as? CategoriesCell
        else {
            fatalError("can`t deqeue the cell")
            
        }
        return cell
    }
}
