import Foundation

protocol WolrdCupRepositoryProtocol{
    func all()->[WolrdCupEntity]
}

class WolrdCupRepository: WolrdCupRepositoryProtocol{
    
    
    
    var wolrdCup:[WolrdCupEntity] = []
    var fileURL = Constants.Repository.url
    var jsonData:Data?
    var jsonDecoder = JSONDecoder()
    
    static let wolrdCupRepository = WolrdCupRepository()
    
    private init() {
        do {
            jsonData = try Data(contentsOf: Constants.Repository.url)
            do{
                    wolrdCup  = try jsonDecoder.decode([WolrdCupEntity].self , from: jsonData!)
            }catch{
                    print("Erro ao acessar entidade: \(error.localizedDescription)")
            }
            
        }catch {
            print("Erro ao acessar URL: \(error.localizedDescription)")
        }
    }
    
    func all() -> [WolrdCupEntity] {
        return self.wolrdCup
    }
    
}
