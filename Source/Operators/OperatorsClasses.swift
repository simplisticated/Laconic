//
//  OperatorsClasses.swift
//  Laconic
//
//  Created by Igor Matyushkin on 26.03.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import Foundation

// MARK: Classes

postfix operator /+ { }

/**
Returns name of class with namespace.

- Parameters:
    - type: Class, which name with namespace will be returned.

- returns: Class name with namespace.
*/
public postfix func /+ (type: NSObject.Type) -> String {
    let classNameWithNamespace = NSStringFromClass(type)
    return classNameWithNamespace
}

postfix operator / { }

/**
Returns name of class without namespace.
 
- Parameters:
    - type: Class, which name without namespace will be returned.

- returns: Class name without namespace.
*/
public postfix func / (type: NSObjectProtocol.Type) -> String {
    let classNameWithNamespace = NSStringFromClass(type)
    let segments = classNameWithNamespace.componentsSeparatedByString(".")
    let classNameWithoutNamespace = segments.last ?? ""
    return classNameWithoutNamespace
}

