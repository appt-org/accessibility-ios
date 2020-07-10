//
//  Accessibility+Announce.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 07/01/2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

import UIKit

extension Accessibility {
    
    /// Posts an accessibility announcement to the assistive technology.
    ///
    /// - parameter message: The message to announce.
    public static func announce(_ message: String) {
        UIAccessibility.post(notification: .announcement, argument: message)
    }
}
