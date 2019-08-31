import Foundation

protocol WinnersPresenterProtocol {
    func all(wolrdCups:[WolrdCupEntity])
    func show(wolrdCup:WolrdCupEntity,winnersViewController:WinnersViewController)
}

class WinnersPresenter: WinnersPresenterProtocol{
    
    var winnersRouter:WinnersRouter?
    
    func show(wolrdCup: WolrdCupEntity, winnersViewController: WinnersViewController) {
        winnersRouter = WinnersRouter()
        winnersRouter?.show(wolrdCup: wolrdCup, viewController: winnersViewController)
    }
    
    func all(wolrdCups: [WolrdCupEntity]) {
        
    }
    
    
    
    
}
