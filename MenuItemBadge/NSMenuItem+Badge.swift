//
//  NSMenuItem+Badge.swift
//
//  Created by usagimaru on 2025/03/25.
//  Copyright © 2025 usagimaru.
//

import Cocoa

@objc extension NSMenuItem {
	
	func setProBadge() {
		badge = NSMenuItemBadge(string: "Pro".localized())
	}
	
	func setNewMarkBadge() {
		badge = NSMenuItemBadge(string: "New".localized())
	}
	
	var hasProBadge: Bool {
		return badge?.stringValue == "Pro".localized()
	}
	
	var hasNewMarkBadge: Bool {
		return badge?.stringValue == "New".localized()
	}
	
	@IBInspectable var textBadge: String {
		get {
			return badge?.stringValue ?? ""
		}
		set {
			badge = newValue.isEmpty ? nil : NSMenuItemBadge(string: newValue)
		}
	}
	
	@IBInspectable var proBadge: Bool {
		get {
			hasProBadge
		}
		set {
			setProBadge()
		}
	}
	
	@IBInspectable var newMarkBadge: Bool {
		get {
			hasNewMarkBadge
		}
		set {
			setNewMarkBadge()
		}
	}
	
	func setUpdatesBadge(count: Int) {
		badge = NSMenuItemBadge.updates(count: count)
	}
	
	func setNewItemsBadge(count: Int) {
		badge = NSMenuItemBadge.newItems(count: count)
	}
	
	func setAlertsBadge(count: Int) {
		badge = NSMenuItemBadge.alerts(count: count)
	}
	
}
