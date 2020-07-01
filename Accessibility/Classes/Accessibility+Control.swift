//
//  Accessibility+Control.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 07/01/2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

import UIKit

extension Accessibility {
    
    /// Pauses the given assistive technology.
    /// Note: you must balance this notification by calling resume()
    ///
    /// - parameter identifier: The identifier of the assistive technology.
    public static func pause(_ identifier: UIAccessibility.AssistiveTechnologyIdentifier) {
        UIAccessibility.post(notification: .pauseAssistiveTechnology, argument: identifier)
    }
    
    /// Resumes the given assistive technology
    ///
    /// - parameter identifier: The identifier of the assistive technology.
    public static func resume(_ identifier: UIAccessibility.AssistiveTechnologyIdentifier) {
        UIAccessibility.post(notification: .resumeAssistiveTechnology, argument: identifier)
    }
}

extension UIAccessibility {
    
    /// Pauses the given assistive technology.
    /// Note: you must balance this notification by calling resume()
    ///
    /// - parameter identifier: The identifier of the assistive technology.
    public static func pause(_ identifier: UIAccessibility.AssistiveTechnologyIdentifier) {
        Accessibility.pause(identifier)
    }
    
    /// Resumes the given assistive technology
    ///
    /// - parameter identifier: The identifier of the assistive technology.
    public static func resume(_ identifier: UIAccessibility.AssistiveTechnologyIdentifier) {
        Accessibility.resume(identifier)
    }
}
