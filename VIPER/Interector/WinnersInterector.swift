import Foundation

public struct WinnerInteractor {
    
    var allWinnersPresenterProtocol: AllWinnersPresenterProtocol
    var wolrdCupRepository = WolrdCupRepository.wolrdCupRepository
    
    
    
    init(winnersPresenterProtocol: AllWinnersPresenterProtocol){
        self.allWinnersPresenterProtocol = winnersPresenterProtocol
    }
    
    func all(){
        let winners = wolrdCupRepository.all()
        allWinnersPresenterProtocol.all(wolrdCups: winners)
    }
    
}
