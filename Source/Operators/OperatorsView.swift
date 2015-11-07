//
//  OperatorsView.swift
//  Laconic
//
//  Created by Igor Matyushkin on 07.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit


// MARK: Manipulating views

infix operator ~> { associativity left }

/**
Updates view's background color.
 
- Parameters:
    - view: View, which background color will be updated.
 
    - backgroundColor: New background color for specified view.
 
- returns: View with updated background color.
*/
public func ~> (view: UIView, backgroundColor: UIColor) -> UIView {
    view.backgroundColor = backgroundColor
    return view
}

/**
Updates view's background color.
 
- Parameters:
    - view: View, which frame will be updated.
 
    - frame: New frame for specified view.
 
- returns: View with updated frame.
*/
public func ~> (view: UIView, frame: CGRect) -> UIView {
    view.frame = frame
    return view
}

/**
Updates view's frame.
 
- Parameters:
    - view: View, which frame will be updated.
 
    - frameParameters: Structure containing values for new frame.
 
- returns: View with updated frame.
*/
public func ~> (view: UIView, frameParameters: (x: Int, y: Int, width: Int, height: Int)) -> UIView {
    let frame = CGRect(x: frameParameters.x, y: frameParameters.y, width: frameParameters.width, height: frameParameters.height)
    view.frame = frame
    return view
}

/**
Updates view's frame.
 
- Parameters:
    - view: View, which frame will be updated.
 
    - frameParameters: Structure containing values for new frame.
 
- returns: View with updated frame.
*/
public func ~> (view: UIView, frameParameters: (x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat)) -> UIView {
    let frame = CGRect(x: frameParameters.x, y: frameParameters.y, width: frameParameters.width, height: frameParameters.height)
    view.frame = frame
    return view
}

/**
Updates view's frame.
 
- Parameters:
    - view: View, which frame will be updated.
 
    - frameParameters: Structure containing values for new frame.
 
- returns: View with updated frame.
*/
public func ~> (view: UIView, frameParameters: (x: Double, y: Double, width: Double, height: Double)) -> UIView {
    let frame = CGRect(x: frameParameters.x, y: frameParameters.y, width: frameParameters.width, height: frameParameters.height)
    view.frame = frame
    return view
}

/**
Updates view's background color.
 
- Parameters:
    - view: View, that will be added to container.
 
    - container: Superview for specified view.
 
- returns: View, that was added to container.
*/
public func ~> (view: UIView, container: UIView) -> UIView {
    container.addSubview(view)
    return view
}



