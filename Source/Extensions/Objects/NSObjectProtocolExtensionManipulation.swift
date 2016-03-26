//
//  NSObjectProtocolExtensionManipulation.swift
//  Laconic
//
//  Created by Igor Matyushkin on 25.03.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import Foundation

public extension NSObjectProtocol {
    
    // MARK: Public static methods
    
    
    // MARK: Private static methods
    
    
    // MARK: Public object methods
    
    public func use(block: ((object: Self) -> Void)) -> Self {
        block(object: self)
        return self
    }
    
    public func useAs<ObjectType>(castToType: ObjectType.Type, withBlock block: (object: ObjectType) -> Void) -> Self {
        let castedObject = self as! ObjectType
        block(object: castedObject)
        return self
    }
    
    
    // MARK: Private object methods
    
}

