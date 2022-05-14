//
//  ViewController.swift
//  HW_3_i23
//
//  Created by Антон Кулик on 14.05.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //1. Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций)
        
        // Перегрузка функции сложения
        
        func sum (_ a: Int,_ b: Int)-> Int{
            
            return a + b
        }
        
        func sum (_ a: Double,_ b: Double)-> Double{
            
            return a + b
        }
        
        func sum (_ a: Int,_ b: Double)-> Double{
            
            return Double(a) + b
        }
        
        func sum (_ a: Double,_ b: Int)-> Double{
            
            return a + Double(b)
        }
        
        // пример суммы
        
        print("Сумма чисел", sum(300, -500))
            
        // Перегрузка функци вычитания
    
    
        func subs(_ x:Int,_ y:Int)-> Int{
                
                return x - y
                
            }
        func subs(_ x:Double,_ y:Double)-> Double{
                    
                return x - y
                    
            }
    
        func subs(_ x:Int,_ y:Double)-> Double{
                        
                return Double(x) - y
                    
            }
    
         func subs(_ x:Double,_ y:Int)-> Double{
                            
                return x - Double(y)
                        
            }
        // пример вычитания
        
        print("Вычитание чисел", subs(300, -500.0))
        
        // Перегрузка функци умножения
        
        func mult (_ a:Int, _ b:Int) -> Int{
            
            return a * b
            
        }
    
        func mult (_ a:Double, _ b:Double) -> Double{
            
            return a * b
            
        }
        
        func mult (_ a:Double, _ b:Int) -> Double{
            
            return a * Double(b)
            
        }
        
        func mult (_ a:Int, _ b:Double) -> Double{
            
            return Double(a) * b
            
        }
        
        // пример умножения
        
        print("Умножение чисел", mult(300, -500.0))
        
        
        // Перегрузка функци деления
        
        
        func dev (_ a:Int, _ b: Int) -> Double{
        
        return Double (a) / Double(b)
        }
        
        func dev (_ a:Double, _ b: Double) -> Double{
        
        return a / b
        }
        
        func dev (_ a:Int, _ b: Double) -> Double{
            
        return Double (a) / b
            }
        
        func dev (_ a:Double, _ b: Int) -> Double{
                
        return a / Double(b)
            }
        
        // пример деления
        
        print("Деление чисел", dev(300, -500.0))
        
        
        
        //2. Вычислить сумму цифр четырехзначного числа
        //1234 % 10 {
        //}
        
        func summOfAllValues (_ abcd: Int) -> Int{
            
            
            var sumOfNumbers: Int = 0
            var x:Int = abcd
            
            for _ in 0 ... x.hashValue.formatted().count {
                let ost = x % 10
                sumOfNumbers += ost
                x = x / 10
                
            }

            return sumOfNumbers
        }
        
        print("--------------------")
        print("Сумма цифр в числе: ", summOfAllValues(1234))
        
        //3. Функция сравнения строк - "авб" больше "ввш"
        //a < b
        
        func stringCompare(firstString: String, secondString: String){
            
            if firstString > secondString {
                print("Первая строка: \(firstString)"," больше чем вторая строка \(secondString)")
            }else if firstString < secondString{
                print("Первая строка: \(firstString)"," меньше чем вторая строка: \(secondString)")
            }else {print("Первая строка:\(firstString)"," равнозначна второй строка\(secondString)")}
        }
        
        print("--------------------")
        stringCompare(firstString: "Мы одинаковые строки", secondString: "Не одинаковые строки")
        
        
        //5. Функция возведения в степень с дефолтным параметром
        //func exponential(num: Int, power: Int = 4) {
        //}
        
        func exponential(num: Int, power: Int)-> Int{
            
            
            let exp = pow(Double(num), Double(power))
            return Int(exp)
            
        }

        print("--------------------")
        print("Возведение в степень \(exponential(num: 10, power: 4))")
    
    
    
        //6. Функция вычисления факториала числа
        // 3! = 1 * 2 * 3
    
    func fuct(f:Int)-> Int{
        
        var num: Int = 1
        
        for i in 1 ... f{
            
            num *= i
            
        }
        return num
    }
        print("--------------------")
        print("Факториал: \(fuct(f: 5))")
    
    
    //4. Циклический вызов функций - поломать приложение
//        while () {
//        }
        
//        func breackAppByCycle(cond:Int)->Int{
//
//            var i = 100
//            while(cond == 1){
//
//            i *= i
//                print("сломайся")
//            }
//            return i
//        }
//
//
//    print(breackAppByCycle(cond: 1))
    
    
    }


}

