//
//  Wage.swift
//  window-shopper
//
//  Created by Andrew Ramirez on 5/18/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import Foundation

//Pro-Tip good functions accept input and return output
//Bad Functions set global variables and rely on other functions to work
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
