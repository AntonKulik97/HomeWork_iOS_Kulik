//
//  ViewController.swift
//  HW_4_i23
//
//  Created by Антон Кулик on 16.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var x = [(1, "x"),
             (4, "y"),
             (6, "a"),
             (-3, "b")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print( "Исходный массив: \(x)")
        print( "Результат операций над массивом: \(arrayFilter(x))")
        
    }
    
    
    func arrayFilter(_ a: Array<(Int,String)>) -> Array<(Int,String)>{
        
        
        let b = a.map({(($0.0 * $0.0), $0.1)}).filter({$0.0 % 2 == 0}).sorted(by: {$0.1 < $1.1})
        

        return b
    }
    
    
    
    
}

