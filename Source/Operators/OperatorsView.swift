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

infix operator --> { associativity left }

/**
Updates view's background color.
 
- Parameters:
    - view: View, which background color will be updated.
 
    - backgroundColor: New background color for specified view.
 
- returns: View with updated background color.
*/
public func --> (view: UIView, backgroundColor: UIColor) -> UIView {
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
public func --> (view: UIView, frame: CGRect) -> UIView {
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
public func --> (view: UIView, frameParameters: (x: Int, y: Int, width: Int, height: Int)) -> UIView {
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
public func --> (view: UIView, frameParameters: (x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat)) -> UIView {
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
public func --> (view: UIView, frameParameters: (x: Double, y: Double, width: Double, height: Double)) -> UIView {
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
public func --> (view: UIView, container: UIView) -> UIView {
    container.addSubview(view)
    return view
}

/**
Updates label's text.

- Parameters:
    - label: Label, which text will be updated.
 
    - text: New text for specified label.
 
- returns: Label with updated text.
*/
public func --> (label: UILabel, text: String) -> UILabel {
    label.text = text
    return label
}

/**
Updates label's attributed text.
 
- Parameters:
    - label: Label, which attributed text will be updated.
 
    - attributedText: New attributed text for specified label.
 
- returns: Label with updated attributed text.
*/
public func --> (label: UILabel, attributedText: NSAttributedString) -> UILabel {
    label.attributedText = attributedText
    return label
}

/**
Updates text view's text.
 
- Parameters:
    - textView: Text view, which text will be updated.
 
    - text: New text for specified text view.
 
- returns: Text view with updated text.
*/
public func --> (textView: UITextView, text: String) -> UITextView {
    textView.text = text
    return textView
}

/**
Updates text view's attributed text.
 
- Parameters:
    - textView: Text view, which attributed text will be updated.
 
    - attributedText: New attributed text for specified text view.
 
- returns: Text view with updated attributed text.
*/
public func --> (textView: UITextView, attributedText: NSAttributedString) -> UITextView {
    textView.attributedText = attributedText
    return textView
}

/**
Updates navigation item's title.
 
- Parameters:
    - navigationItem: Navigation item, which title will be updated.
 
    - text: New title for specified navigation item.
 
- returns: Navigation item with updated title.
*/
public func --> (navigationItem: UINavigationItem, title: String) -> UINavigationItem {
    navigationItem.title = title
    return navigationItem
}

