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
}
