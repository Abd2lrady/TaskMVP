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
    var categoriesProvider = MoyaProvider<CategoriesAPI>()
    override func viewDidLoad() {
        super.viewDidLoad()
        shapeHeaderView(with: 65)
        createHeading(with: "الإستشارات")
        
        categoriesProvider.request(.getCategories) { result in
            switch result {
            case .success(let response):
                do {
                    let result = try JSONDecoder().decode(Categories.self, from: response.data)
                    print(result)
                } catch {
                    print("error parsing")
                }
            case .failure:
                print("error response")
            }
        }
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
