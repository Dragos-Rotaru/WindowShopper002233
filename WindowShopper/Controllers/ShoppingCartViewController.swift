//
//  ShoppingCartViewController.swift
//  WindowShopper
//
//  Created by DragosRotaru on 29/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

class ShoppingCartViewController: UIViewController, UITableViewDelegate {
	var products = [Product(title: "Corona Extra", description: "6 pack", id: "392103", price: 12.5, image: ImageWrapper(image: #imageLiteral(resourceName: "RandomBeer"))),
					Product(title: "Mere", description: "D'alea bune", id: "32afsdfk312", price: 9.8, image: ImageWrapper(image: #imageLiteral(resourceName: "Apple"))),
					Product(title: "Lapte Dana", description: "0,5l", id: "1321djascmr09213asd",price: 25.0, image: ImageWrapper(image: #imageLiteral(resourceName: "Steak")))]

	@IBOutlet weak var tableview: UITableView!

	override func viewDidLoad() {
		tableview.tableFooterView = UIView()
		configureNavigationBar()
	}

}

extension ShoppingCartViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return products.count + 1
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if indexPath.row < products.count {
		let cell = tableView.dequeueReusableCell(withIdentifier: "productTableViewCell") as? ProductTableViewCell
			let product = products[indexPath.row]
			cell?.productTitleLabel.text = product.title
			cell?.productDescriptionLabel.text = product.description
			cell?.productImage.image = product.image?.image
			cell?.priceLabel.text = String(product.price)
			cell?.configureCell()

			return cell ?? UITableViewCell()
		} else if indexPath.row == products.count {
			let cell = tableView.dequeueReusableCell(withIdentifier: "totalsTableViewCell") as? TotalsTableViewCell
			cell?.totalPriceLabel.text = "\(products.reduce(0, { $0 + $1.price })) RON"
			cell?.configureCell()

			return cell ?? UITableViewCell()
		}

		return UITableViewCell()
	}

	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		if indexPath.row < products.count {
			return 130.0
		} else if indexPath.row == products.count {
			return 44.0
		}
		return 0
	}
}
