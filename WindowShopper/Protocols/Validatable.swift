//
//  Validatable.swift
//  WindowShopper
//
//  Created by DragosRotaru on 04/06/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

protocol Validatable {
	associatedtype T

	func validate(_ functions: [(T) -> Bool]) -> Bool
}

protocol Evaluatable {
	associatedtype T

	func evaluate(with condition: T) -> Bool
}

//extension Validatable where Self: UITextField{
//	func validateField(functions: [(String) -> Bool]) -> Bool {
//		return functions.map { function in function(self.text ?? "")}.reduce(true) {$0 && $1}
//	}
//}
