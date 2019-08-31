//
//  WolrdCupRouter.swift
//  CampeoesDaCopa
//
//  Created by Alessandro on 28/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import Foundation
import UIKit

protocol WolrdCupRouterRouterProtocol {
    func detail()
}


class WolrdCupRouter: UINavigationController, WolrdCupRouterRouterProtocol {
    
    // MARK: Properties
    
    var window: UIWindow?
    var wolrdCupViewController:WolrdCupViewController?
    
    // MARK: Initializers
    
    convenience init(window: UIWindow?) {
        self.init()
        self.window = window
    }
    
    func detail() {
        
        wolrdCupViewController = WolrdCupViewController()
        if let wolrdCupViewController = wolrdCupViewController {
            wolrdCupViewController.navigationItem.title = "Campeões da Copa"
            viewControllers = [wolrdCupViewController]
        }
        
        if let window = window {
            window.rootViewController = self
        }
    }
    
    
}
