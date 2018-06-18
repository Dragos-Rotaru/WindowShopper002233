//
//  Ext+UITextField.swift
//  WindowShopper
//
//  Created by DragosRotaru on 04/06/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

extension UITextField: Validatable {

	//check if all the functions evaluating the string are true
	func validate(_ functions: [(String) -> Bool]) -> Bool {
		return functions.lazy.map { function in
			function(self.text ?? "") }.reduce(true) { $0 && $1 }
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
