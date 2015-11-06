//
//  OperatorsView.swift
//  LaconicDemo
//
//  Created by Igor Matyushkin on 07.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit


// MARK: Manipulating views

infix operator ~> { associativity left precedence 160 }

/**
Updates view's background color.
 
- Parameters:
    - view: View, which background color will be updated.
 
    - backgroundColor: New background color for specified view.
 
- returns: View with updated background color.
*/
func ~> (view: UIView, backgroundColor: UIColor) -> UIView {
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
func ~> (view: UIView, frame: CGRect) -> UIView {
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
func ~> (view: UIView, container: UIView) -> UIView {
    container.addSubview(view)
    return view
}



