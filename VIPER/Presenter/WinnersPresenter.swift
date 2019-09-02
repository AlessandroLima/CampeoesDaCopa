import Foundation

protocol AllWinnersPresenterProtocol {
    func all(wolrdCups:[WolrdCupEntity])
}


protocol ShowWinnersPresenterProtocol {
    func show(wolrdCup:WolrdCupEntity,winnersViewController:WinnersViewController)
}

class WinnersPresenter: ShowWinnersPresenterProtocol{
    
    var winnersRouter:WinnersRouter?
    
    func show(wolrdCup: WolrdCupEntity, winnersViewController: WinnersViewController) {
        winnersRouter = WinnersRouter()
        
        if let winnersRouter = winnersRouter{
                winnersRouter.show(wolrdCup: wolrdCup, viewController: winnersViewController)
        }
        
    }
    
}
