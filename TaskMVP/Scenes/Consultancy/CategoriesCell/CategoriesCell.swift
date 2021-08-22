//
//  CategoriesCell.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 27/07/2021.
//

import UIKit

class CategoriesCell: UICollectionViewCell {

    @IBOutlet  private weak var imgView: UIImageView!
    @IBOutlet  private weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        layer.cornerRadius = 12
    }
    
}

extension CategoriesCell: CategoryCellView {
    func setImage(with: String) {
//        self.imgView.image = UIImage(data: data)
    }
    
    func setTitle(with title: String) {
        self.nameLabel.text = title
    }
}
