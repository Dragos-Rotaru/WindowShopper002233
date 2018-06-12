//
//  ProductTableViewCell.swift
//  WindowShopper
//
//  Created by DragosRotaru on 29/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

class ProductTableViewCell: UITableViewCell, ConfigureCellProtocol {

	@IBOutlet weak var productImage: UIImageView!
	@IBOutlet weak var productTitleLabel: UILabel!
	@IBOutlet weak var productDescriptionLabel: UILabel!
	@IBOutlet weak var productQuantityTextField: UITextField!
	@IBOutlet weak var priceLabel: UILabel!
	@IBAction func increaseProductQuantity(_ sender: Any) {
		if let text = productQuantityTextField.text,
		   let quantity = Int(text) {
			productQuantityTextField.text = String(quantity + 1)
		}
	}
	@IBAction func decreaseProductQuantity(_ sender: Any) {
		if let text = productQuantityTextField.text,
			let quantity = Int(text) {
			productQuantityTextField.text = String(quantity - 1)
		}
	}
	func calculateProductPrice(product: Product) {
		guard let text = productQuantityTextField.text,
			  let quantity = Double(text) else {
				//TODO: treat this case
				preconditionFailure("Incorrect quantity format")
		}
		priceLabel.text = String("\(product.price * quantity)")
	}
}
