import UIKit

//
//  AccessibilityView.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 02-07-2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

/// This class contains accessibility helper methods for UIView's.
open class AccessibilityView {

    private var view: UIView
    
    init(_ view: UIView) {
        self.view = view
    }
    
    /// Accessibility label
    open var label: String? {
        get {
            return Accessibility.getLabel(view)
        }
        set(value) {
            Accessibility.setLabel(view, label: value)
        }
    }
    
    /// Accessibility action
    open var action: String? {
        get {
            return Accessibility.getAction(view)
        }
        set(value) {
            Accessibility.setAction(view, action: value)
        }
    }
    
    /// Order of accessibility elements
    open var elements: [Any]? {
        get {
            return view.accessibilityElements
        }
        set(value) {
            view.accessibilityElements = value
        }
    }
    
    /// Moves the accessiblity focus to this view
    func focus() {
        Accessibility.layoutChanged(view)
    }
}


public extension UIView {
    
    /// Adds the `accessibility` field to all classes which inherit from UIView.
    var accessibility: AccessibilityView {
        get {
            return AccessibilityView(self)
        }
    }
}
