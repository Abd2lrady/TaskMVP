//
//  InitailVC.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 26/07/2021.
//

import UIKit

class ConsultancyVC: UIViewController {

    @IBOutlet private weak var headerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        shapeHeaderView()
        // Do any additional setup after loading the view.
    }
    
    func shapeHeaderView() {
        let radius = 65
        headerView.layer.cornerRadius = CGFloat(radius)
        headerView.layer.maskedCorners = [.layerMaxXMaxYCorner]
    }

}
