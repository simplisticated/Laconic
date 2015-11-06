//
//  OperatorsSqrt.swift
//  Laconic
//
//  Created by Igor Matyushkin on 06.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation

// MARK: Square root of 1st degree

/*
 * Type Alt+V to use this operator.
 */

prefix operator √ { }

public prefix func √ (number: Int) -> Double {
    let doubleNumber = Double(number)
    return sqrt(doubleNumber)
}

public prefix func √ (number: Float) -> Double {
    let doubleNumber = Double(number)
    return sqrt(doubleNumber)
}

public prefix func √ (number: Double) -> Double {
    return sqrt(number)
}


// MARK: Square root of 2nd degree

/*
 * Press Alt+V two times to use this operator.
 */

prefix operator √√ { }

public prefix func √√ (number: Int) -> Double {
    return sqrt(√number)
}

public prefix func √√ (number: Float) -> Double {
    return sqrt(√number)
}

public prefix func √√ (number: Double) -> Double {
    return sqrt(√number)
}


// MARK: Square root of 3rd degree

/*
 * Press Alt+V three times to use this operator.
 */

prefix operator √√√ { }

public prefix func √√√ (number: Int) -> Double {
    return sqrt(√√number)
}

public prefix func √√√ (number: Float) -> Double {
    return sqrt(√√number)
}

public prefix func √√√ (number: Double) -> Double {
    return sqrt(√√number)
}


// MARK: Square root of 4th degree

/*
 * Press Alt+V four times to use this operator.
 */

prefix operator √√√√ { }

public prefix func √√√√ (number: Int) -> Double {
    return sqrt(√√√number)
}

public prefix func √√√√ (number: Float) -> Double {
    return sqrt(√√√number)
}

public prefix func √√√√ (number: Double) -> Double {
    return sqrt(√√√number)
}


// MARK: Square root of 5th degree

/*
 * Press Alt+V five times to use this operator.
 */

prefix operator √√√√√ { }

public prefix func √√√√√ (number: Int) -> Double {
    return sqrt(√√√√number)
}

public prefix func √√√√√ (number: Float) -> Double {
    return sqrt(√√√√number)
}

public prefix func √√√√√ (number: Double) -> Double {
    return sqrt(√√√√number)
}


// MARK: Square root of 6th degree

/*
 * Press Alt+V six times to use this operator.
 */

prefix operator √√√√√√ { }

public prefix func √√√√√√ (number: Int) -> Double {
    return sqrt(√√√√√number)
}

public prefix func √√√√√√ (number: Float) -> Double {
    return sqrt(√√√√√number)
}

public prefix func √√√√√√ (number: Double) -> Double {
    return sqrt(√√√√√number)
}


// MARK: Square root of 7th degree

/*
 * Press Alt+V seven times to use this operator.
 */

prefix operator √√√√√√√ { }

public prefix func √√√√√√√ (number: Int) -> Double {
    return sqrt(√√√√√√number)
}

public prefix func √√√√√√√ (number: Float) -> Double {
    return sqrt(√√√√√√number)
}

public prefix func √√√√√√√ (number: Double) -> Double {
    return sqrt(√√√√√√number)
}


// MARK: Square root of 8th degree

/*
 * Press Alt+V eight times to use this operator.
 */

prefix operator √√√√√√√√ { }

public prefix func √√√√√√√√ (number: Int) -> Double {
    return sqrt(√√√√√√√number)
}

public prefix func √√√√√√√√ (number: Float) -> Double {
    return sqrt(√√√√√√√number)
}

public prefix func √√√√√√√√ (number: Double) -> Double {
    return sqrt(√√√√√√√number)
}


// MARK: Square root of 9th degree

/*
 * Press Alt+V nine times to use this operator.
 */

prefix operator √√√√√√√√√ { }

public prefix func √√√√√√√√√ (number: Int) -> Double {
    return sqrt(√√√√√√√√number)
}

public prefix func √√√√√√√√√ (number: Float) -> Double {
    return sqrt(√√√√√√√√number)
}

public prefix func √√√√√√√√√ (number: Double) -> Double {
    return sqrt(√√√√√√√√number)
}


// MARK: Square root of 10th degree

/*
 * Press Alt+V ten times to use this operator.
 */

prefix operator √√√√√√√√√√ { }

public prefix func √√√√√√√√√√ (number: Int) -> Double {
    return sqrt(√√√√√√√√number)
}

public prefix func √√√√√√√√√√ (number: Float) -> Double {
    return sqrt(√√√√√√√√√number)
}

public prefix func √√√√√√√√√√ (number: Double) -> Double {
    return sqrt(√√√√√√√√√number)
}

