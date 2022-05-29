import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var heinekenPriceLable: UILabel!
    @IBOutlet weak var blancPriceLable: UILabel!
    @IBOutlet weak var balticaPriceLable: UILabel!
    @IBOutlet weak var heinekenRemainLable: UILabel!
    @IBOutlet weak var blancRemainLable: UILabel!
    @IBOutlet weak var balticaRemainLable: UILabel!
    
    @IBOutlet weak var heinekenSellButton: UIButton!
    @IBOutlet weak var blancSellButton: UIButton!
    @IBOutlet weak var balticaSellButton: UIButton!
    
    @IBOutlet weak var allRemainButton: UIButton!
    @IBOutlet weak var moneyEarnButton: UIButton!
    @IBOutlet weak var closeOpenButton: UIButton!
    

    var firstBeer = Beer(name:"Heineken",price:120,country:"Netherlands",remainOfValume:170,sold: 0,summa: 0)
    var secondBeer = Beer(name:"Blanc",price:110,country:"France‎",remainOfValume:140,sold: 0,summa: 0)
    var thirdBeer = Beer(name:"Baltica",price:60,country:"Russia",remainOfValume:100,sold: 0,summa: 0)
    
   // var beer = [Beer(name:"Heineken",price:120,country:"Netherlands",remainOfValume:170,sold: 0,summa: 0)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heinekenSellButton.layer.cornerRadius = 10
        blancSellButton.layer.cornerRadius = 10
        balticaSellButton.layer.cornerRadius = 10
        allRemainButton.layer.cornerRadius = 10
        moneyEarnButton.layer.cornerRadius = 10
        
        heinekenPriceLable.text = String(firstBeer.price)
        blancPriceLable.text = String(secondBeer.price)
        balticaPriceLable.text = String(thirdBeer.price)
        
        heinekenRemainLable.text = String(firstBeer.remainOfValume)
        blancRemainLable.text = String(secondBeer.remainOfValume)
        balticaRemainLable.text = String(thirdBeer.remainOfValume)
        
        
        
    }
    
    
    @IBAction func sellHeineken(_ sender: UIButton) {
        
        heinekenRemainLable.text = String( BeerSell.shared.soldButtle(beers: firstBeer).remainOfValume)
        mainLable.text = "Сумма: \(firstBeer.summa)"
        
    }
    
    @IBAction func sellBlanc(_ sender: UIButton) {
        
        blancRemainLable.text = String(BeerSell.shared.soldButtle(beers: secondBeer).remainOfValume)
        mainLable.text = "Сумма: \(secondBeer.summa)"
    }
    
    @IBAction func sellBaltica(_ sender: UIButton) {
        
        balticaRemainLable.text = String(BeerSell.shared.soldButtle(beers: thirdBeer).remainOfValume)
        mainLable.text = "Сумма: \(thirdBeer.summa)"
    }
    
    @IBAction func remainAll(_ sender: UIButton) {
        
        
        mainLable.text = "Остаток: \(firstBeer.remainOfValume + secondBeer.remainOfValume + thirdBeer.remainOfValume) л"
        
    }
    
    @IBAction func moneyEarn(_ sender: UIButton) {
        
        mainLable.text = "Общая: \(firstBeer.summa + secondBeer.summa + thirdBeer.summa)"
        
    }
    
    @IBAction func closeOpen(_ sender: UIButton) {
        
        
        
        BeerSell.shared.closeWork(beers: firstBeer)
        BeerSell.shared.closeWork(beers: secondBeer)
        BeerSell.shared.closeWork(beers: thirdBeer)
        mainLable.text = "Смена акрыта"
        //closeOpenButton.backgroundColor = .blue
        
        
    }
    
}

