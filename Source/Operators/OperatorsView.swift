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
Updates view's top left coordinate.
 
- Parameters:
    - view: View, which top left coordinate will be updated.
 
    - topLeftCoordinate: Point containing top left coordinate for view.
 
- returns: View with updated top left coordinate.
*/
public func --> (view: UIView, topLeftCoordinate: CGPoint) -> UIView {
    var frameForView = view.frame
    frameForView.origin = topLeftCoordinate
    view.frame = frameForView
    return view
}

/**
Updates view's size.
 
- Parameters:
    - view: View, which size will be updated.
 
    - size: New size for view.
 
- returns: View with updated size.
*/
public func --> (view: UIView, size: CGSize) -> UIView {
    var frameForView = view.frame
    frameForView.size = size
    view.frame = frameForView
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
Updates label's font.
 
- Parameters:
    - label: Label, which font will be updated.
 
    - font: New font for specified label.
 
- returns: Label with updated font.
*/
public func --> (label: UILabel, font: UIFont) -> UILabel {
    label.font = font
    return label
}

/**
Updates label's text alignment.
 
- Parameters:
    - label: Label, which text alignment will be updated.
 
    - textAlignment: New text alignment for specified label.
 
- returns: Label with updated text alignment.
*/
public func --> (label: UILabel, textAlignment: NSTextAlignment) -> UILabel {
    label.textAlignment = textAlignment
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
Updates text view's font.
 
- Parameters:
    - textView: Text view, which font will be updated.
 
    - font: New font for specified text view.
 
- returns: Text view with updated font.
*/
public func --> (textView: UITextView, font: UIFont) -> UITextView {
    textView.font = font
    return textView
}

/**
Updates text view's text alignment.
 
- Parameters:
    - textView: Text view, which text alignment will be updated.
 
    - textAlignment: New text alignment for specified text view.
 
- returns: Text view with updated text alignment.
*/
public func --> (textView: UITextView, textAlignment: NSTextAlignment) -> UITextView {
    textView.textAlignment = textAlignment
    return textView
}

/**
Updates button's title.
 
- Parameters:
    - button: Button, which title will be updated.
 
    - title: New title for specified button.
 
- returns: Button with updated title.
*/
public func --> (button: UIButton, title: String) -> UIButton {
    button.setTitle(title, forState: .Normal)
    return button
}

/**
Updates button's attributed title.
 
- Parameters:
    - button: Button, which attributed title will be updated.
 
    - attributedTitle: New attributed title for specified button.
 
- returns: Button with updated attributed title.
*/
public func --> (button: UIButton, attributedTitle: NSAttributedString) -> UIButton {
    button.setAttributedTitle(attributedTitle, forState: .Normal)
    return button
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


postfix operator --> { }

/**
Removes view from superview.

- Parameters:
    - view: View, which will be removed from its superview.
*/
public postfix func --> (view: UIView) {
    view.removeFromSuperview()
}

