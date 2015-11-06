//
//  OperatorsSum.swift
//  LaconicDemo
//
//  Created by Igor Matyushkin on 07.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation


// MARK: Sum

/*
 * Press Alt+W to use this operator.
 */

prefix operator ∑ { }

prefix func ∑ (numbers: [Int]) -> Int {
    var sum: Int = 0
    
    for item in numbers {
        sum += item
    }
    
    return sum
}

prefix func ∑ (numbers: [Float]) -> Float {
    var sum: Float = 0.0
    
    for item in numbers {
        sum += item
    }
    
    return sum
}

prefix func ∑ (numbers: [Double]) -> Double {
    var sum: Double = 0.0
    
    for item in numbers {
        sum += item
    }
    
    return sum
}

