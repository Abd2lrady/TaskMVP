//
//  InitailVC.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 26/07/2021.
//

import UIKit

class ConsultancyVC: UIViewController {

    @IBOutlet private weak var headerView: UIView!
    @IBOutlet private weak var headerLabel: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        shapeHeaderView(with: 65)
        createHeading(with: "الإستشارات")
    }
    
    func shapeHeaderView(with radius: Float) {
        headerView.layer.cornerRadius = CGFloat(radius)
        headerView.layer.maskedCorners = [.layerMaxXMaxYCorner]
    }
    
    func createHeading(with label: String) {
        let labelView = HeadLabel(frame: headerLabel.bounds)
        labelView.headingLabel.text = label
        headerLabel.addSubview(labelView)
    }
}
