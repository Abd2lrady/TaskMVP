//
//  CategoriesCell.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 27/07/2021.
//

import UIKit

class CategoriesCell: UICollectionViewCell {

    @IBOutlet  weak var imgView: UIImageView!
    @IBOutlet  weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        layer.cornerRadius = 12
    }
    
}
