import UIKit

//
//  Accessibility.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 07/01/2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

/// This class contains accessibility helper methods for iOS.
/// You can import the Accessibility framework, or use UIAccessibility extensions.
/// [`Read more about accessibility on iOS`](https://developer.apple.com/accessibility/ios/).
///
/// Usage:
///     Accessibility.announce("Example")
///     UIAccessibility.announce("Example")
///
open class Accessibility {

    public static func getLabel(_ view: UIView) -> String? {
        return view.accessibilityLabel
    }
    
    public static func setLabel(_ view: UIView, label: String?) {
        view.accessibilityLabel = label
    }
    
    
    public static func getAction(_ view: UIView) -> String? {
        return view.accessibilityHint
    }
    
    public static func setAction(_ view: UIView, action: String?) {
        view.accessibilityHint = action
    }
}
