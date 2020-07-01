//
//  Accessibility+Screen.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 07/01/2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

import UIKit

extension Accessibility {
    
    /// Moves the focus to the given view.
    /// Should be used after a view has appeared which makes up a major portion of the screen.
    ///
    /// - parameter view: View to move focus to.
    public static func screenChanged(_ view: UIView) {
        UIAccessibility.post(notification: .screenChanged, argument: view)
    }
    
    /// Makes an announcement.
    /// Should be used after a view has appeared which makes up a major portion of the screen.
    ///
    /// - parameter announcement: The announcement to make.
    public static func screenChanged(_ announcement: String) {
        UIAccessibility.post(notification: .screenChanged, argument: announcement)
    }
}

extension UIAccessibility {
    
    /// Moves the focus to the given view.
    /// Should be used after a view has appeared which makes up a major portion of the screen.
    ///
    /// - parameter view: View to move focus to.
    public static func screenChanged(_ view: UIView) {
        Accessibility.screenChanged(view)
    }
    
    /// Makes an announcement.
    /// Should be used after a view has appeared which makes up a major portion of the screen.
    ///
    /// - parameter announcement: The announcement to make.
    public static func screenChanged(_ announcement: String) {
        Accessibility.screenChanged(announcement)
    }
}
