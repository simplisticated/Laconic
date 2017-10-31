//
//  OperatorsSum.swift
//  Laconic
//
//  Created by Igor Matyushkin on 07.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit


// MARK: Sum

/*
 * Press Alt+W to use this operator.
 */

prefix operator ∑

/**
Sum of numbers in array.
 
- Parameters:
    - numbers: Array of numbers.
 
 - returns: Sum of elements in specified array.
*/
@discardableResult
public prefix func ∑ (numbers: [Int]) -> Int {
    var sum: Int = 0
    
    for item in numbers {
        sum += item
    }
    
    return sum
}

/**
Sum of numbers in array.
 
- Parameters:
    - numbers: Array of numbers.
 
- returns: Sum of elements in specified array.
*/
@discardableResult
public prefix func ∑ (numbers: [Float]) -> Float {
    var sum: Float = 0.0
    
    for item in numbers {
        sum += item
    }
    
    return sum
}

/**
Sum of numbers in array.
 
- Parameters:
    - numbers: Array of numbers.
 
- returns: Sum of elements in specified array.
*/
@discardableResult
public prefix func ∑ (numbers: [Double]) -> Double {
    var sum: Double = 0.0
    
    for item in numbers {
        sum += item
    }
    
    return sum
}

/**
Concatenates strings in array.
 
- Parameters:
    - strings: Array of strings.
 
- returns: Concatenation of strings in specified array.
*/
@discardableResult
public prefix func ∑ (strings: [String]) -> String {
    var resultString = ""
    
    for item in strings {
        resultString += item
    }
    
    return resultString
}

/**
Fills container with views from array.
 
- Parameters:
    - subviews: Array of views, which will be moved to container view.
 
- returns: Container view that includes elements from specified array, added as subviews.
*/
@discardableResult
public prefix func ∑ (subviews: [UIView]) -> UIView {
    let resultView = UIView()
    
    for item in subviews {
        resultView.addSubview(item)
    }
    
    return resultView
}

