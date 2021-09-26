//
//  roundCorners.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 26/09/2021.
//

import UIKit

extension CALayer {

    func setSingleRoundedCorner(radius: CGFloat, corner: UIRectCorner) {
        let path = UIBezierPath(roundedRect: self.bounds,
                                byRoundingCorners: corner,
                                cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.mask = mask
    }
}
