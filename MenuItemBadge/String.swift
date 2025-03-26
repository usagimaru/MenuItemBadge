//
//  String.swift
//  MenuItemBadge
//
//  Created by usagimaru on 2025/03/26.
//

import Foundation

extension String {
	func localized() -> String {
		NSLocalizedString(self, comment: self)
	}
}
