
import Foundation

class BeerSell{
    
    
    static let shared = BeerSell()
    
    //var beer = Beer(name: "", price: 0, country: "", remainOfValume: 0, sold: 0, summa: 0)
    
    private init(){}
    //var beer = [Beer]()
        
    
    func soldButtle(beers: Beer) -> Beer{
        if beers.remainOfValume > 0 {
           beers.remainOfValume -= 1
           beers.sold += 1
           beers.summa = beers.sold * beers.price
        }
        
        return beers
    }
    
    func closeWork(beers: Beer){
        
        //beers.remainOfValume = beers.remainOfValume + beers.sold
        beers.summa = 0
    }
    
}
