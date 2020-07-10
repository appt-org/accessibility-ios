//
//  Accessibility+Layout.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 07/01/2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

import UIKit

extension Accessibility {
    
    /// Moves the focus to the given view.
    /// Should be used when the layout of a screen changes, such as when an element appears or disappears.
    ///
    /// - parameter view: View to move focus to.
    public static func layoutChanged(_ view: UIView) {
        UIAccessibility.post(notification: .layoutChanged, argument: view)
    }
    
    /// Makes an announcement.
    /// Should be used when the layout of a screen changes, such as when an element appears or disappears.
    ///
    /// - parameter announcement: The announcement to make.
    public static func layoutChanged(_ announcement: String) {
        UIAccessibility.post(notification: .layoutChanged, argument: announcement)
    }
}
