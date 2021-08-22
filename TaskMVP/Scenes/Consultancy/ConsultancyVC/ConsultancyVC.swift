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
    @IBOutlet private weak var headerLabel: UIView!
    @IBOutlet weak var categoriesCV: UICollectionView!
    
    var presenter: ConsultancyPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shapeHeaderView(with: 65)
        createHeading(with: "الإستشارات")
        setupCategoriesCV()
//        presenter = ConsultancyPresenter(with: self)
//        presenter?.viewLoaded()
    }
    
    func shapeHeaderView(with radius: Float) {
        headerView.layer.cornerRadius = CGFloat(radius)
        headerView.layer.maskedCorners = [.layerMaxXMaxYCorner]
    }
    
    func createHeading(with label: String) {
        let labelView = HeadLabel(frame: headerLabel.bounds)
        labelView.setHeadLabel = label
//        labelView.headingLabel.text = label
        headerLabel.addSubview(labelView)
    }
    
}
