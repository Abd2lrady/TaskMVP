//
//  InitailVC.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 26/07/2021.
//

import UIKit
import Moya

class ConsultancyVC: UIViewController {
    @IBOutlet private weak var headerView: UIView!
    @IBOutlet private weak var headerLabel: HeadLabel!
    @IBOutlet private weak var _categoriesCV: UICollectionView!
    
    var presenter: ConsultancyPresenter!
    var categoriesDataSource: UICollectionViewDataSource? {
        didSet {
            categoriesCV.dataSource = categoriesDataSource
            categoriesCV.reloadData()
        }
    }
    var categoriesCV: UICollectionView {
        get {
            return _categoriesCV
        }
        set {
            _categoriesCV = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerLabel.setHeadLabel = "الإستشارات"
        setupCategoriesCV()
        presenter?.viewLoaded()
    }
    
    override func viewDidLayoutSubviews() {
        headerView.layer.setSingleRoundedCorner(radius: 65, corner: .bottomRight)
    }
    
    func setupCategoriesCV() {
        // loading cell nib file
        let cellNib = UINib(nibName: "CategoriesCell", bundle: .main)
        // register loaded nib file to collection view
        categoriesCV.register(cellNib, forCellWithReuseIdentifier: "CategoriesCell")
        categoriesCV.backgroundColor = .clear
    }
}
