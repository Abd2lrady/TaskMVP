//
//  HeadLabel.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady on 26/07/2021.
//

import UIKit

class HeadLabel: UIView {

    @IBOutlet private weak var contentView: UIView!
    @IBOutlet  private weak var headingLabel: UILabel!
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    var setHeadLabel: String {
        get {
            return headingLabel.text ?? ""
        }
        set {
            headingLabel.text = newValue
        }
    }
    
}

extension HeadLabel {
    func commonInit() {
        let labelView = Bundle.main.loadNibNamed("HeadLabel",
                                                 owner: self)?.first as? UIView
        labelView?.frame = self.bounds
        self.addSubview(labelView ?? UIView())
        
    }
}
