//
//  ProductTableViewCell.swift
//  WindowShopper
//
//  Created by DragosRotaru on 29/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

class ProductTableViewCell: UITableViewCell, ShoppingCellProtocol, UITextFieldDelegate {

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

	override func awakeFromNib() {
		productQuantityTextField.delegate = self
	}
	func calculateProductPrice(product: Product, tableview: UITableView, indexPath: IndexPath) {
		guard let text = productQuantityTextField.text,
			  let quantity = Double(text) else {
				//TODO: treat this case
				priceLabel.text = "0"
				return
		}
		priceLabel.text = String("\(product.price * quantity)")
	}
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		return Int(string) != nil
	}
}
