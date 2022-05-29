
import Foundation


class Beer{
    
    var name: String
    var price: Int
    var country: String
    var remainOfValume: Int
    var sold: Int
    var summa: Int
    
    init(name:String,price:Int,country:String,remainOfValume:Int,sold: Int, summa: Int) {
        self.name = name
        self.price = price
        self.country = country
        self.remainOfValume = remainOfValume
        self.sold = sold
        self.summa = summa
        
    }
    
}
