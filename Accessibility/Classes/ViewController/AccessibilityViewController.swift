import UIKit

//
//  AccessibilityViewController.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 08-07-2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

/// This class contains accessibility helper methods for UIView's.
open class AccessibilityViewController {

    private var viewController: UIViewController
    
    private var view: AccessibilityView {
        return viewController.view.accessibility
    }
    
    init(_ viewController: UIViewController) {
        self.viewController = viewController
    }
    
    /// Order of accessibility elements
    open var elements: [Any]? {
        get {
            return view.elements
        }
        set(value) {
            view.elements = value
        }
    }
    
    /// Posts an accessibility announcement to the assistive technology.
    ///
    /// - Parameter message: The message to announce.
    open func announce(_ message: String) {
        Accessibility.announce(message)
    }
    
    /// Mutes the assistive technology
    open func mute() {
        Accessibility.mute()
    }
}

public extension UIViewController {
    
    /// Adds the `accessibility` field to all classes which inherit from UIViewController.
    var accessibility: AccessibilityViewController {
        get {
            return AccessibilityViewController(self)
        }
    }
}
