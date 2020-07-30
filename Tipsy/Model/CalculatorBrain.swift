//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Rohit sahu on 22/07/20.

//

import Foundation
struct CalculatorBrain{
    var result : Result?
    var bil : Double? = nil
    var tipsPercentage : Double? = nil
    var people : Int? = nil

    mutating func setCalculatorInput(_ userInput : String!)  {
        if userInput != "" {
            
            bil = Double(userInput)
        }
    }
    mutating func setTips ( _ userInput : String?)
    {
        if userInput == "0%"{
        tipsPercentage = 0
        
        }
        else if  userInput == "10%"{
            tipsPercentage = 10
           
        }
        else {
            tipsPercentage = 20
        }
        
       
    }
    mutating func setSplit(_ userInput: Int) {
        people = userInput
    }
    mutating func calculateResult()
    {
         let totalbil = bil! * Double(1 + (Double(tipsPercentage!)/100))
        result = Result(people: people! , tips :Int(tipsPercentage!) ,result: totalbil/Double(people!))
    }
    
    func getResult() ->Result
    {
        return result!
    }
}
