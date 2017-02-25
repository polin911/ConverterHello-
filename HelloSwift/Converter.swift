//
//  Converter.swift
//  HelloSwift
//
//  Created by Polina on 25.02.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import Foundation


struct Converter {
    
    let forwardRatio: Double
    let bacwardRatio: Double
    
    var precision: Int
    

    func convertForward(amount: Double) -> Double {
        return roundValue(amount: amount * forwardRatio, precision: self.precision)
    }
    
    func converyBackward(amount: Double) -> Double {
        return roundValue(amount: amount * bacwardRatio, precision:  self.precision)
    }
    
    private func roundValue(amount: Double, precision: Int) -> Double {
        let multyply = pow(10, Double(precision))
        let newValue = round(amount * multyply)
        return newValue / multyply
    }
    
}
