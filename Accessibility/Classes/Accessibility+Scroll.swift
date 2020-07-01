//
//  Accessibility+Scroll.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 07/01/2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

import UIKit

extension Accessibility {
    
    /// Makes an announcement.
    /// Should be used when a scroll action has completed and the accessibilityScroll(_:) method has been called.
    ///
    /// - parameter announcement: The announcement to make.
    public static func pageScrolled(_ announcement: String) {
        UIAccessibility.post(notification: .pageScrolled, argument: announcement)
    }
}

extension UIAccessibility {
    
    /// Makes an announcement.
    /// Should be used when a scroll action has completed and the accessibilityScroll(_:) method has been called.
    ///
    /// - parameter announcement: The announcement to make.
    public static func pageScrolled(_ announcement: String) {
        Accessibility.pageScrolled(announcement)
    }
}
