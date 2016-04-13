//
//  RatingControl.swift
//  FoodTracker
//
//  Created by HLam on 4/13/16.
//  Copyright © 2016 BanVien. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    // MARK: Properties
    var ratingButtons = [UIButton]()
    var rating = 0
    let spacing = 5


    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let filterImage = UIImage(named: "FilterImage");
        let emptyImage = UIImage(named: "RatingImage");
        
        for _ in 0..<5 {
            let button = UIButton()

            button.setImage(emptyImage, forState: .Normal)
            button.setImage(filterImage, forState: .Selected)
            button.setImage(filterImage, forState: [.Highlighted, .Selected])
            button.adjustsImageWhenHighlighted = false
            ratingButtons += [button]
            addSubview(button)
        }
    }
    
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (44 + 5))
            button.frame = buttonFrame
        }
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
}
