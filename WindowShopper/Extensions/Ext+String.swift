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
}
