//
//  ImageWrapper.swift
//  WindowShopper
//
//  Created by DragosRotaru on 29/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

struct ImageWrapper: Codable {
	let image: UIImage

	public enum CodingKeys: String, CodingKey {
		case image
	}

	public init(image: UIImage) {
		self.image = image
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		let data = try container.decode(Data.self, forKey: CodingKeys.image)
		guard let image = UIImage(data: data) else {
			preconditionFailure("Could not decode image!")
		}
		self.image = image
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		guard let imageData = UIImagePNGRepresentation(image) else {
			preconditionFailure("Could not encode image!")
		}
		try container.encode(imageData, forKey: CodingKeys.image)
	}
}
