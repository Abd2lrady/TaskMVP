//
//  CategoriesCV.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 27/07/2021.
//

import UIKit

class CategoriesView: UIView {
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var categoriesCV: UICollectionView!
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        let view = Bundle.main
            .loadNibNamed("CategoriesView",
                          owner: self)?.first as? UIView
        view?.frame = self.bounds
        addSubview(contentView)
        initCategoriesCV()
        
    }
    
    func initCategoriesCV() {
        let cellNib = UINib(nibName: "CategoriesCell", bundle: .main)
        categoriesCV.register(cellNib, forCellWithReuseIdentifier: "CategoriesCell")
        categoriesCV.backgroundColor = .clear
        categoriesCV.dataSource = self
    }
}

extension CategoriesView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = categoriesCV.dequeueReusableCell(withReuseIdentifier: "CategoriesCell",
                                                          for: indexPath) as? CategoriesCell
        else {fatalError("can`t deqeue the cell")}
        return cell
    }
}
