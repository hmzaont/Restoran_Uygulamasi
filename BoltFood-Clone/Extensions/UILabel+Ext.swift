//
//  UILabel+Ext.swift
//  BoltFood
//
//  Created by Hamza ONAT on 21\05\2024.
//

import Foundation
import UIKit

extension UILabel {
    
    func addLetterSpacing (about spacing: Double){
        if let labelText = text, labelText.isEmpty == false {
            let attributedString = NSMutableAttributedString(string: labelText)
            attributedString.addAttribute(.kern, value: spacing, range: NSRange(location: 0, length: attributedString.length - 1))
        }
    }
    func scaleFont(){
        self.adjustsFontForContentSizeCategory = true
    }
}


