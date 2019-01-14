//
//  Wage.swift
//  window-shopper
//
//  Created by Christian Davis on 12/10/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int { // forWage is param description used for autoComplete when you type, wage is name of param/var itself
        return Int(ceil(price / wage)) // ceil property rounds quotient up
    }
}
