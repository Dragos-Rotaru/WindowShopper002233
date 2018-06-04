//
//  Product.swift
//  WindowShopper
//
//  Created by DragosRotaru on 29/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

struct Product: Codable {
	var title: String
	var description: String
	var	id: String
	var price: Double
	var image: ImageWrapper?

	public init(title: String, description: String, id: String, price: Double) {
		self.title = title
		self.description = description
		self.id = id
		self.price = price
		self.image = nil
	}

	public init(title: String, description: String, id: String, price: Double, image: ImageWrapper) {
		self.title = title
		self.description = description
		self.id = id
		self.price = price
		self.image = image
	}
}
