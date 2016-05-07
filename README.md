<p align="center" >
  <img src="https://github.com/igormatyushkin014/Laconic/blob/master/Logo/logo-1024-300.png" alt="Laconic" title="Laconic">
</p>

# Laconic
Short and clear expressions in Swift.

##How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Laconic` cocoapod

## Requirements

* iOS 8 and later
* Xcode 7 and later

## Usage

### Square roots

```swift
/*
 * Square root of 2nd degree.
 */

let someNumber = 4
let squareRoot = √someNumber                  // 2


/*
 * Square root of 8th degree.
 */
 
let anotherSquareRoot = √√√65536              // 4


/*
 * Square root of 16th degree.
 */

let oneMoreSquareRoot = √√√√(124500 + 3500)   // 2.085454039791327

```

### Equality

```swift
/*
 * You can use ≤ operator instead of <=, and ≥ instead of >=
 */

let eightIsMoreOrEqualToHalf = 8 ≥ 0.5            // true

let oneIsMoreOrEqualToSeven = 1 ≥ 7               // false

let twentyFourIsLessOrEqualToNinety = 24 ≤ 90     // true
```

### Sum

```swift
/*
 * Example of sum of several numbers.
 */

let numbers = [
    8,
    241,
    382,
    90
]

let sumOfNumbers = ∑numbers            // 721


/*
 * Also, you can get sum of strings.
 */

let sumOfStrings = ∑["a", "b", "c"]    // abc


/*
 * If you use ∑ operator with array of UIView objects,
 * you will get another UIView,
 * which is a superview for those elements in array.
 * In other words, each view in array will be added to container as a subview
 * and finally the container will be returned as a result of operation.
 */

let view1 = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 20.0, height: 20.0))
view1.backgroundColor = .greenColor()

let view2 = UIView(frame: CGRect(x: 20.0, y: 0.0, width: 20.0, height: 20.0))
view2.backgroundColor = .blueColor()

let container = ∑[view1, view2]

```

### Views

```swift
let view1 = UIView()
let label1 = UILabel()
let containerView = UIView() // Will be used as superview for view1


/*
 * Set {0, 0, 200, 200} frame for view1.
 */

view1 --> CGRect(x: 0, y: 0, width: 200, height: 200)


/*
 * Also, it's possible to set frame by this command.
 */

view1 --> (0, 0, 200, 200)


/*
 * Set green background color for view1.
 */

view1 --> .greenColor()


/*
 * Add view1 to containerView as a subview.
 */

view1 --> containerView


/*
 * All those operations can be done in one line of code.
 */

view1 --> (0, 0, 200, 200) --> .greenColor() --> containerView


/*
 * Assume we want to set container's background color to blue.
 */

view1 --> (0, 0, 200, 200) --> .greenColor() --> (containerView --> .blueColor())


/*
 * Set label's text to "Hello" and add this label to view1.
 */

label1 --> "Hello" --> view1.bounds --> view1


/*
 * Set label's text, font, text alignment, frame and finally add to view1.
 */

label1 --> "Hello" --> UIFont.systemFontOfSize(20.0) --> .Center --> view1.bounds --> view1

```

Here is the full list of supported operators for manipulating views:

```swift
/*
 * Set background color for UIView object.
 */

let view1 = UIView()
view1 --> .greenColor()


/*
 * Set frame for UIView object.
 */

view1 --> CGRect(x: 0, y: 0, width: 200, height: 200)


/*
 * Set frame for UIView object.
 */

view1 --> (0, 0, 200, 200)


/*
 * Set top left coordinate for UIView object.
 */

view1 --> CGPoint(x: 20, y: 20)


/*
 * Set size for UIView object.
 */

view1 --> CGSize(width: 200, height: 200)


/*
 * Add UIView object as subview to another UIView object.
 */

view1 --> containerView


/*
 * Set text for UILabel object.
 */

let label1 = UILabel()
label1 --> "Hello"


/*
 * Set attributed text for UILabel object.
 */

let textAttributes: [String : AnyObject] = [
    NSFontAttributeName: UIFont.systemFontOfSize(20.0),
    NSForegroundColorAttributeName: UIColor.blackColor(),
    NSKernAttributeName: 0.5
]

let attributedText = NSAttributedString(string: "Hello", attributes: textAttributes)

label1 --> attributedText


/*
 * Set font for UILabel object.
 */

label1 --> UIFont.systemFontOfSize(20.0)


/*
 * Set text alignment for UILabel object.
 */

label1 --> .Center


/*
 * Set text for UITextView object.
 */

let textView1 = UITextView()
textView1 --> "Hello"


/*
 * Set attributed text for UITextView object.
 */

textView1 --> attributedText


/*
 * Set font for UITextView object.
 */

textView1 --> UIFont.systemFontOfSize(20.0)


/*
 * Set text alignment for UITextView object.
 */

textView1 --> .Center

/*
 * Set title for UIButton object.
 */

let button1 = UIButton()
button1 --> "Hello"


/*
 * Set attributed title for UIButton object.
 */

button1 --> attributedText


/*
 * Set image to UIImageView object.
 */

let image = UIImage(named: "image_name")

let imageView1 = UIImageView()
imageView1 --> image


/*
 * Set title for UINavigationItem object.
 */

let navigationItem1 = UINavigationItem()
navigationItem1 --> "Hello"


/*
 * Remove view from superview.
 */

view1-->

```

### Manipulations with objects

```swift
let object = SomeClass()

object.use { (object) in
    // Do several operations with object...
}

object.useAs(NSString.self) { (object) in
    // Do something with object casted to NSString type...
}
```

Both methods `use` and `useAs` support chain calls, so it's possible to write something like this:

```swift
object.use { (object) in
    // Do several operations with object...
}.useAs(NSString.self) { (object) in
    // Do something with object casted to NSString type...
}.useAs(NSNumber.self) { (object) in
    // Do something with object casted to NSNumber type...
}
```

Since two methods above return receiver's instance, you can use them with initializer like this:

```swift
let view = UIView().use { (object) in
    object --> .blueColor()
    object.clipsToBounds = true
}
```

This approach makes code more demonstrative and clear.

## License

`Laconic` is available under the MIT license. See the `LICENSE` file for more info.
