//
//  Ext+String.swift
//  WindowShopper
//
//  Created by DragosRotaru on 04/06/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation

extension String: Evaluatable {

	func evaluate(with condition: String) -> Bool {
		guard let range = range(of: condition, options: .regularExpression, range: nil, locale: nil) else {
			return false
		}
		return range.lowerBound == startIndex && range.upperBound == endIndex
	}
	func isEmailValid(text: String) -> Bool {
		let regexp = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
		return text.evaluate(with: regexp)
	}
	func isValidPassword(password: String) -> Bool {
		let regexp = "^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8}$"
		return password.evaluate(with: regexp)
	}
	func isNumberOnly (text: String) -> Bool {
		let regexp = "[0-9]{1,}"
		return text.evaluate(with: regexp)
	}
}
