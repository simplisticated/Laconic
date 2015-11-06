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
 * Square root of 1st degree.
 */

let someNumber = 4
let squareRoot = √someNumber                  // 2


/*
 * Square root of 3rd degree.
 */
 
let anotherSquareRoot = √√√65536              // 4


/*
 * Square root of 4th degree.
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
let containerView = UIView() // Will be used as superview for view1.


/*
 * Set {0, 0, 200, 200} frame for view1.
 */

view1 ~> CGRect(x: 0, y: 0, width: 200, height: 200)


/*
 * Also, it's possible to set frame by this command.
 */

view1 ~> (0, 0, 200, 200)


/*
 * Set green background color for view1.
 */

view1 ~> .greenColor()


/*
 * Add view1 to containerView as a subview.
 */

view1 ~> containerView


/*
 * All those operations can be done in one line of code.
 */

view1 ~> (0, 0, 200, 200) ~> .greenColor() ~> containerView


/*
 * Assume we want to set container's background color to blue.
 */

view1 ~> (0, 0, 200, 200) ~> .greenColor() ~> (containerView ~> .blueColor())

```

## License

`Laconic` is available under the MIT license. See the `LICENSE` file for more info.
