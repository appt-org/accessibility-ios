import UIKit

//
//  AccessibleViewController.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 08-07-2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

/// This class contains accessibility helper methods for UIView's.
open class AccessibleViewController {

    private var viewController: UIViewController
    
    private var view: AccessibleView {
        return viewController.view.accessibility
    }
    
    init(_ viewController: UIViewController) {
        self.viewController = viewController
    }
    
    /// Accessibility elements of the view
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
    /// - parameter message: The message to announce.
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
    var accessibility: AccessibleViewController {
        get {
            return AccessibleViewController(self)
        }
    }
}
