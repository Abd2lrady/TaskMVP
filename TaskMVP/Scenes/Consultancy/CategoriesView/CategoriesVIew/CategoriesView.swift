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

}

extension CategoriesView {
    func commonInit() {
        let view = Bundle.main
            .loadNibNamed("CategoriesView",
                          owner: self)?.first as? UIView
        view?.frame = self.bounds
        addSubview(contentView)
        initCategoriesCV()
    }
}
