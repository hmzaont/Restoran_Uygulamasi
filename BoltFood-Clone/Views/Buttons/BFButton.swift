//
//  BFButton.swift
//  BoltFood
//
//  Created by Hamza ONAT on 25\05\2024.
//

import Foundation
import UIKit

class BFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        layer.cornerRadius = 60/2
        titleLabel?.font = UIFont(name: "EuclidCircularB-SemiBold", size: 18)
        translatesAutoresizingMaskIntoConstraints = false
    }
}



