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
///     Appt.announce("Example")
///     UIAccessibility.announce("Example")
///
open class Accessibility {

    /**
     Returns the accessibility label of the given view.
     - Parameter view: The view to retrieve the label from.
     - Returns: Accessibility label of the given view.
     */
    public static func getLabel(_ view: UIView) -> String? {
        return view.accessibilityLabel
    }
    
    /**
     Sets the accessibility label for the given view.
     - Parameters:
        - view: The view to apply the label to.
        - label: The label to set.
     */
    public static func setLabel(_ view: UIView, label: String?) {
        view.accessibilityLabel = label
    }
    
    
    /**
     Returns the accessibility action of the given view.
     - Parameter view: The view to retrieve the action from.
     - Returns: Accessibility action of the given view.
     */
    public static func getAction(_ view: UIView) -> String? {
        return view.accessibilityHint
    }
    
    /**
     Sets the accessibility label for the given view.
     - Parameters:
        - view: The view to apply the label to.
        - action: The action to set.
     */
    public static func setAction(_ view: UIView, action: String?) {
        view.accessibilityHint = action
    }
    
    
    /**
    Posts an accessibility announcement to the assistive technology.
    - Parameter message: The message to announce.
    */
    public static func announce(_ message: String) {
        UIAccessibility.post(notification: .announcement, argument: message)
    }
    
    /// Mutes the assistive technology
    public static func mute() {
        announce("  ")
    }
    
    
    /**
     Pauses the given assistive technology.
     Note: you must balance this notification by calling resume()
     - Parameter identifier: The identifier of the assistive technology.
    */
    public static func pause(_ identifier: UIAccessibility.AssistiveTechnologyIdentifier) {
        UIAccessibility.post(notification: .pauseAssistiveTechnology, argument: identifier)
    }
    
    /**
     Resumes the given assistive technology.
     - Parameter identifier: The identifier of the assistive technology.
    */
    public static func resume(_ identifier: UIAccessibility.AssistiveTechnologyIdentifier) {
        UIAccessibility.post(notification: .resumeAssistiveTechnology, argument: identifier)
    }
    
    
    /**
     Moves the focus to the given view by posting a `layout changed` notificaton.
     Should be used when the layout of a screen changes, such as when an element appears or disappears.
     - Parameter view: View to move focus to.
     */
    public static func layoutChanged(_ view: UIView) {
        UIAccessibility.post(notification: .layoutChanged, argument: view)
    }
    
    /**
     Posts a `layout changed` announcement.
     Should be used when the layout of a screen changes, such as when an element appears or disappears.
     - Parameter announcement: The announcement to make..
     */
    public static func layoutChanged(_ announcement: String) {
        UIAccessibility.post(notification: .layoutChanged, argument: announcement)
    }
    
    
    /**
     Moves the focus to the given view by using a `screen changed` notification.
     Should be used after a view has appeared which makes up a major portion of the screen.
     - Parameter view: View to move focus to.
     */
    public static func screenChanged(_ view: UIView) {
        UIAccessibility.post(notification: .screenChanged, argument: view)
    }
    
    /**
     Posts a `screen changed` announcement.
     Should be used after a view has appeared which makes up a major portion of the screen.
     - Parameter announcement: The announcement to make.
     */
    public static func screenChanged(_ announcement: String) {
        UIAccessibility.post(notification: .screenChanged, argument: announcement)
    }
    
    
    /**
     Posts a `page scrolled` announcement.
     Should be used when a scroll action has completed and the accessibilityScroll(_:) method has been called.
     - Parameter announcement: The announcement to make.
     */
    public static func pageScrolled(_ announcement: String) {
        UIAccessibility.post(notification: .pageScrolled, argument: announcement)
    }
}
