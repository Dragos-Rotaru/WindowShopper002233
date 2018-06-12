//
//  TextValidation.swift
//  WindowShopper
//
//  Created by DragosRotaru on 12/06/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation

protocol TextValidation {
	var regExFindMatchString: String { get }
	var validationMessage: String { get }
}

extension TextValidation {
	var regExMatchingString: String {
		get {
			return regExFindMatchString + "$"
		}
	}
	func validateString(str: String) -> Bool {
		if let _ = str.range(of: regExMatchingString, options: .regularExpression, range: nil, locale: nil) {
			return true
		} else {
			return false
		}
	}
	func getMatchingString(str: String) -> String? {
		if let newMatch = str.range(of: regExFindMatchString, options: .regularExpression, range: nil, locale: nil) {
			return String(str[newMatch])
		} else {
			return nil
		}
	}
}

class AlphaNumericValidation: TextValidation {
	static let sharedInstance = AlphaNumericValidation()
	private init(){}
	let regExFindMatchString: String = "^[a-zA-Z0-9]{0,32}"
	let validationMessage: String = "Can only contain Alpha Numeric characters"
}
class PasswordValidation: TextValidation {
	static let sharedInstance = PasswordValidation()
	private init(){}
	let regExFindMatchString: String = "^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8}$"
	let validationMessage: String = "Password is not strong enough"
}
