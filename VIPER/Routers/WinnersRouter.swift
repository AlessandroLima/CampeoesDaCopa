import Foundation
import UIKit

protocol WinnersRouterRouterProtocol {
    func list()
    func show(wolrdCup: WolrdCupEntity, viewController: WinnersViewController)
}


class WinnersRouter: UINavigationController, WinnersRouterRouterProtocol {
    
    // MARK: Properties
    
    var window: UIWindow?
    var winnersViewController:WinnersViewController?
    var wolrdCupViewController:WolrdCupViewController?
    // MARK: Initializers
    
    convenience init(window: UIWindow?) {
        self.init()
        self.window = window
    }
    
    
    // MARK: Functions
    
    func list() {
        
        winnersViewController = WinnersViewController()
        if let winnersViewController = winnersViewController {
            winnersViewController.navigationItem.title = "Campeões"
            winnersViewController.title = "Campeões"
            viewControllers = [winnersViewController]
        }
        
        if let window = window {
            window.rootViewController = self
        }
    }
    
    func show(wolrdCup: WolrdCupEntity, viewController: WinnersViewController) {
        
        wolrdCupViewController = WolrdCupViewController()
        
        if let wolrdCupViewController = wolrdCupViewController{
            
            wolrdCupViewController.navigationItem.title = "Copa do mundo \(wolrdCup.year)"
            wolrdCupViewController.wolrdCupEntity = wolrdCup
            
            if let navigationController = viewController.navigationController{
             navigationController.pushViewController(wolrdCupViewController, animated: true)
            }
        }
        
    }
    
}
