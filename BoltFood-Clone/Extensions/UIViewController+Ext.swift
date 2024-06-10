//
//  UIViewController+Ext.swift
//  BoltFood
//
//  Created by Hamza ONAT on 21\05\2024.
//

import UIKit

extension UIViewController {
    
    func configureBackButton(){
        let backImage =  UIImage(systemName: "arrow.left")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 18, weight: .medium))
        navigationController?.navigationBar.backIndicatorImage = backImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: .none, action: .none)
        navigationController?.navigationBar.topItem?.backBarButtonItem?.imageInsets = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 0)
        navigationController?.navigationBar.tintColor = .black
    }

}
