//
//  AppDelegate.swift
//  MenuItemBadge
//
//  Created by usagimaru on 2025/03/26.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate, NSMenuItemValidation {

	
	func applicationWillFinishLaunching(_ notification: Notification) {
		NSApp.mainMenu?.items.forEach { item in
			item.submenu?.items.forEach { subItem in
				if subItem.title == "Check for Updates…" {
					subItem.setUpdatesBadge(count: 4)
				}
				if subItem.title == "Log" {
					subItem.setAlertsBadge(count: 108)
				}
				if subItem.title == "Speech" {
					subItem.setNewItemsBadge(count: 2)
				}
			}
		}
	}
	
	
	// MARK: - NSMenuItemValidation

	func validateMenuItem(_ menuItem: NSMenuItem) -> Bool {
		menuItem.isEnabled = !menuItem.hasProBadge
		
		return true
	}
	
	
	// MARK: -
	
	@IBAction func checkForUpdates(_ sender: Any) {
	}
	
	@IBAction func openLog(_ sender: Any) {
	}

}

