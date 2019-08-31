import Foundation

public struct WinnerInteractor {
    
    var winnersPresenterProtocol: WinnersPresenterProtocol
    var wolrdCupRepository = WolrdCupRepository.wolrdCupRepository
    
    
    
    init(winnersPresenterProtocol: WinnersPresenterProtocol){
        self.winnersPresenterProtocol = winnersPresenterProtocol
    }
    
    func all(){
        let winners = wolrdCupRepository.all()
        winnersPresenterProtocol.all(wolrdCups: winners)
    }
    
}
