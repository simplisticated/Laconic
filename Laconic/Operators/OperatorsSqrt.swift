//
//  OperatorsSqrt.swift
//  Laconic
//
//  Created by Igor Matyushkin on 06.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation

// MARK: One square root

/*
 * Type Alt+V to use this operator.
 */

prefix operator √

@discardableResult
public prefix func √ (number: Int) -> Double {
    let doubleValue = Double(number)
    return sqrt(doubleValue)
}

@discardableResult
public prefix func √ (number: Float) -> Double {
    let doubleValue = Double(number)
    return sqrt(doubleValue)
}

@discardableResult
public prefix func √ (number: Double) -> Double {
    return sqrt(number)
}


// MARK: Two square roots

/*
 * Press Alt+V two times to use this operator.
 */

prefix operator √√

@discardableResult
public prefix func √√ (number: Int) -> Double {
    return √(√number)
}

@discardableResult
public prefix func √√ (number: Float) -> Double {
    return √(√number)
}

@discardableResult
public prefix func √√ (number: Double) -> Double {
    return √(√number)
}


// MARK: Three square roots

/*
 * Press Alt+V three times to use this operator.
 */

prefix operator √√√

@discardableResult
public prefix func √√√ (number: Int) -> Double {
    return √(√√number)
}

@discardableResult
public prefix func √√√ (number: Float) -> Double {
    return √(√√number)
}

@discardableResult
public prefix func √√√ (number: Double) -> Double {
    return √(√√number)
}


// MARK: Four square roots

/*
 * Press Alt+V four times to use this operator.
 */

prefix operator √√√√

@discardableResult
public prefix func √√√√ (number: Int) -> Double {
    return √(√√√number)
}

@discardableResult
public prefix func √√√√ (number: Float) -> Double {
    return √(√√√number)
}

@discardableResult
public prefix func √√√√ (number: Double) -> Double {
    return √(√√√number)
}


// MARK: Five square roots

/*
 * Press Alt+V five times to use this operator.
 */

prefix operator √√√√√

@discardableResult
public prefix func √√√√√ (number: Int) -> Double {
    return √(√√√√number)
}

@discardableResult
public prefix func √√√√√ (number: Float) -> Double {
    return √(√√√√number)
}

@discardableResult
public prefix func √√√√√ (number: Double) -> Double {
    return √(√√√√number)
}


// MARK: Six square roots

/*
 * Press Alt+V six times to use this operator.
 */

prefix operator √√√√√√

@discardableResult
public prefix func √√√√√√ (number: Int) -> Double {
    return √(√√√√√number)
}

@discardableResult
public prefix func √√√√√√ (number: Float) -> Double {
    return √(√√√√√number)
}

@discardableResult
public prefix func √√√√√√ (number: Double) -> Double {
    return √(√√√√√number)
}


// MARK: Seven square roots

/*
 * Press Alt+V seven times to use this operator.
 */

prefix operator √√√√√√√

@discardableResult
public prefix func √√√√√√√ (number: Int) -> Double {
    return √(√√√√√√number)
}

@discardableResult
public prefix func √√√√√√√ (number: Float) -> Double {
    return √(√√√√√√number)
}

@discardableResult
public prefix func √√√√√√√ (number: Double) -> Double {
    return √(√√√√√√number)
}


// MARK: Eight square roots

/*
 * Press Alt+V eight times to use this operator.
 */

prefix operator √√√√√√√√

@discardableResult
public prefix func √√√√√√√√ (number: Int) -> Double {
    return √(√√√√√√√number)
}

@discardableResult
public prefix func √√√√√√√√ (number: Float) -> Double {
    return √(√√√√√√√number)
}

@discardableResult
public prefix func √√√√√√√√ (number: Double) -> Double {
    return √(√√√√√√√number)
}


// MARK: Nine square roots

/*
 * Press Alt+V nine times to use this operator.
 */

prefix operator √√√√√√√√√

@discardableResult
public prefix func √√√√√√√√√ (number: Int) -> Double {
    return √(√√√√√√√√number)
}

@discardableResult
public prefix func √√√√√√√√√ (number: Float) -> Double {
    return √(√√√√√√√√number)
}

@discardableResult
public prefix func √√√√√√√√√ (number: Double) -> Double {
    return √(√√√√√√√√number)
}


// MARK: Ten square roots

/*
 * Press Alt+V ten times to use this operator.
 */

prefix operator √√√√√√√√√√

@discardableResult
public prefix func √√√√√√√√√√ (number: Int) -> Double {
    return √(√√√√√√√√number)
}

@discardableResult
public prefix func √√√√√√√√√√ (number: Float) -> Double {
    return √(√√√√√√√√√number)
}

@discardableResult
public prefix func √√√√√√√√√√ (number: Double) -> Double {
    return √(√√√√√√√√√number)
}

