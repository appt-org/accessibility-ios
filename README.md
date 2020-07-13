# Accessibility

[![Version](https://img.shields.io/cocoapods/v/Accessibility.svg?style=flat)](https://cocoapods.org/pods/Accessibility)
[![License](https://img.shields.io/cocoapods/l/Accessibility.svg?style=flat)](https://cocoapods.org/pods/Accessibility)
[![Platform](https://img.shields.io/cocoapods/p/Accessibility.svg?style=flat)](https://cocoapods.org/pods/Accessibility)

The purpose of this library is to provide a unified way for accessibility features on Android on iOS.

All accessibility methods are available through the `Accessibility` class. Additionally, an `accessibility` property is added to all classes which inherit from `UIView` and `UIViewController`.

Example:

Providing an accessibility label:
- on Android you would set `contentDescription`
- on iOS you would set `accessibilityLabel`

With this library you can can use `accessibility.label` on Android and iOS. The library calls the native methods.

## Features
- UIView
	- `label`: set the accessibility label
	- `action`: set the accessibility action to announce
	- `elements`: set the order of accessibility elements
	- `focus()`: moves the accessibility focus to this view 
- UIViewController
	- `elements`: set the order of accessibility elements
	- `announce(message)`: announces the provided message

## Requirements

Minimum supported iOS version is 12.0

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

Accessibility is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Accessibility'
```

## Author

Jan Jaap de Groot, janjaap@abra.nl

## License

Accessibility is available under the MIT license. See the LICENSE file for more info.