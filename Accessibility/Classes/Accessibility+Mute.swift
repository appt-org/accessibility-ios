//
//  UIAccessibility+Mute.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 07/01/2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

import UIKit

extension Accessibility {
    
    /// Mutes the assistive technology, with an optional delay in seconds.
    ///
    /// - parameter delay: Delay in seconds.
    public static func mute() {
        UIAccessibility.announce("  ")
    }
}

extension UIAccessibility {
    
    /// Mutes the assistive technology, with an optional delay in seconds.
    ///
    /// - parameter delay: Delay in seconds.
    public static func mute() {
        Accessibility.mute()
    }
}
