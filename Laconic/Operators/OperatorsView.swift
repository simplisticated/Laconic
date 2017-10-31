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

precedencegroup AssociativityLeft {
    associativity: left
}

infix operator --> : AssociativityLeft

/**
Updates view's background color.
 
- Parameters:
    - view: View, whose background color will be updated.
    - backgroundColor: New background color for specified view.
 
- returns: View with updated background color.
*/
@discardableResult
public func --> (view: UIView, backgroundColor: UIColor) -> UIView {
    view.backgroundColor = backgroundColor
    return view
}

/**
Updates view's background color.
 
- Parameters:
    - view: View, whose frame will be updated.
    - frame: New frame for specified view.
 
- returns: View with updated frame.
*/
@discardableResult
public func --> (view: UIView, frame: CGRect) -> UIView {
    view.frame = frame
    return view
}

/**
Updates view's frame.
 
- Parameters:
    - view: View, whose frame will be updated.
    - frameParameters: Structure containing values for new frame.
 
- returns: View with updated frame.
*/
@discardableResult
public func --> (view: UIView, frameParameters: (x: Int, y: Int, width: Int, height: Int)) -> UIView {
    let frame = CGRect(x: frameParameters.x, y: frameParameters.y, width: frameParameters.width, height: frameParameters.height)
    view.frame = frame
    return view
}

/**
Updates view's frame.
 
- Parameters:
    - view: View, whose frame will be updated.
    - frameParameters: Structure containing values for new frame.
 
- returns: View with updated frame.
*/
@discardableResult
public func --> (view: UIView, frameParameters: (x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat)) -> UIView {
    let frame = CGRect(x: frameParameters.x, y: frameParameters.y, width: frameParameters.width, height: frameParameters.height)
    view.frame = frame
    return view
}

/**
Updates view's frame.
 
- Parameters:
    - view: View, whose frame will be updated.
    - frameParameters: Structure containing values for new frame.
 
- returns: View with updated frame.
*/
@discardableResult
public func --> (view: UIView, frameParameters: (x: Double, y: Double, width: Double, height: Double)) -> UIView {
    let frame = CGRect(x: frameParameters.x, y: frameParameters.y, width: frameParameters.width, height: frameParameters.height)
    view.frame = frame
    return view
}

/**
Updates view's top left coordinate.
 
- Parameters:
    - view: View, whose top left coordinate will be updated.
    - topLeftCoordinate: Point containing top left coordinate for view.
 
- returns: View with updated top left coordinate.
*/
@discardableResult
public func --> (view: UIView, topLeftCoordinate: CGPoint) -> UIView {
    var frameForView = view.frame
    frameForView.origin = topLeftCoordinate
    view.frame = frameForView
    return view
}

/**
Updates view's size.
 
- Parameters:
    - view: View, whose size will be updated.
    - size: New size for view.
 
- returns: View with updated size.
*/
@discardableResult
public func --> (view: UIView, size: CGSize) -> UIView {
    var frameForView = view.frame
    frameForView.size = size
    view.frame = frameForView
    return view
}

/**
Moves view to container.
 
- Parameters:
    - view: View, that will be added to container.
    - container: Superview for specified view.
 
- returns: View, that was added to container.
*/
@discardableResult
public func --> (view: UIView, container: UIView) -> UIView {
    container.addSubview(view)
    return view
}

/**
Updates label's text.

- Parameters:
    - label: Label, whose text will be updated.
    - text: New text for specified label.
 
- returns: Label with updated text.
*/
@discardableResult
public func --> (label: UILabel, text: String) -> UILabel {
    label.text = text
    return label
}

/**
Updates label's attributed text.
 
- Parameters:
    - label: Label, whose attributed text will be updated.
    - attributedText: New attributed text for specified label.
 
- returns: Label with updated attributed text.
*/
@discardableResult
public func --> (label: UILabel, attributedText: NSAttributedString) -> UILabel {
    label.attributedText = attributedText
    return label
}

/**
Updates label's font.
 
- Parameters:
    - label: Label, whose font will be updated.
    - font: New font for specified label.
 
- returns: Label with updated font.
*/
@discardableResult
public func --> (label: UILabel, font: UIFont) -> UILabel {
    label.font = font
    return label
}

/**
Updates label's text alignment.
 
- Parameters:
    - label: Label, whose text alignment will be updated.
    - textAlignment: New text alignment for specified label.
 
- returns: Label with updated text alignment.
*/
@discardableResult
public func --> (label: UILabel, textAlignment: NSTextAlignment) -> UILabel {
    label.textAlignment = textAlignment
    return label
}

/**
Updates text view's text.
 
- Parameters:
    - textView: Text view, whose text will be updated.
    - text: New text for specified text view.
 
- returns: Text view with updated text.
*/
@discardableResult
public func --> (textView: UITextView, text: String) -> UITextView {
    textView.text = text
    return textView
}

/**
Updates text view's attributed text.
 
- Parameters:
    - textView: Text view, whose attributed text will be updated.
    - attributedText: New attributed text for specified text view.
 
- returns: Text view with updated attributed text.
*/
@discardableResult
public func --> (textView: UITextView, attributedText: NSAttributedString) -> UITextView {
    textView.attributedText = attributedText
    return textView
}

/**
Updates text view's font.
 
- Parameters:
    - textView: Text view, whose font will be updated.
    - font: New font for specified text view.
 
- returns: Text view with updated font.
*/
@discardableResult
public func --> (textView: UITextView, font: UIFont) -> UITextView {
    textView.font = font
    return textView
}

/**
Updates text view's text alignment.
 
- Parameters:
    - textView: Text view, whose text alignment will be updated.
    - textAlignment: New text alignment for specified text view.
 
- returns: Text view with updated text alignment.
*/
@discardableResult
public func --> (textView: UITextView, textAlignment: NSTextAlignment) -> UITextView {
    textView.textAlignment = textAlignment
    return textView
}

/**
Updates button's title.
 
- Parameters:
    - button: Button, whose title will be updated.
    - title: New title for specified button.
 
- returns: Button with updated title.
*/
@discardableResult
public func --> (button: UIButton, title: String) -> UIButton {
    button.setTitle(title, for: .normal)
    return button
}

/**
Updates button's attributed title.
 
- Parameters:
    - button: Button, whose attributed title will be updated.
 
    - attributedTitle: New attributed title for specified button.
 
- returns: Button with updated attributed title.
*/
@discardableResult
public func --> (button: UIButton, attributedTitle: NSAttributedString) -> UIButton {
    button.setAttributedTitle(attributedTitle, for: .normal)
    return button
}

/**
Updates image view's image.

- Parameters:
    - imageView: Image view, whose image will be updated.
    - image: New image for specified image view.

- returns: Image view with updated image.
*/
@discardableResult
public func --> (imageView: UIImageView, image: UIImage?) -> UIImageView {
    imageView.image = image
    return imageView
}

/**
Updates navigation item's title.
 
- Parameters:
    - navigationItem: Navigation item, whose title will be updated.
    - text: New title for specified navigation item.
 
- returns: Navigation item with updated title.
*/
@discardableResult
public func --> (navigationItem: UINavigationItem, title: String) -> UINavigationItem {
    navigationItem.title = title
    return navigationItem
}

postfix operator -->

/**
Removes view from superview.

- Parameters:
    - view: View that will be removed from its superview.
*/
@discardableResult
public postfix func --> (view: UIView) -> UIView {
    view.removeFromSuperview()
    return view
}

