//
//  OperatorsEquality.swift
//  Laconic
//
//  Created by Igor Matyushkin on 06.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation

// MARK: Less or equal

/*
 * Press Alt+, to use this operator.
 */

infix operator ≤ { }

@discardableResult
public func ≤ (left: Int, right: Int) -> Bool {
    return left <= right
}

@discardableResult
public func ≤ (left: Float, right: Float) -> Bool {
    return left <= right
}

@discardableResult
public func ≤ (left: Double, right: Double) -> Bool {
    return left <= right
}


// MARK: Bigger or equal

/*
 * Press Alt+. to use this operator.
 */

infix operator ≥ { }

@discardableResult
public func ≥ (left: Int, right: Int) -> Bool {
    return left >= right
}

@discardableResult
public func ≥ (left: Float, right: Float) -> Bool {
    return left >= right
}

@discardableResult
public func ≥ (left: Double, right: Double) -> Bool {
    return left >= right
}

