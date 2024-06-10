//
//  Coordinator.swift
//  BoltFood
//
//  Created by Hamza ONAT on 21\05\2024.
//

import UIKit

protocol Coordinator: AnyObject {
    var childControllers: [Coordinator] { get }
    var navigationController: UINavigationController { get }
    
    func startCoordinator()  // initial point of navigation
}

class MainCoordinator: Coordinator {
    
    var childControllers: [Coordinator] = []
    
    var navigationController = UINavigationController()
    
    func startCoordinator() {
        let initialVC = RegisterVC()
        navigationController.pushViewController(initialVC, animated: false)
        
    }
    func showProfile(){
        
    }
    
    
}
