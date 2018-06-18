//
//  FavoritesViewController.swift
//  WindowShopper
//
//  Created by DragosRotaru on 12/06/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

var favorites = [Product(title: "Corona Extra", description: nil, id: "392103", price: 12.5, image: ImageWrapper(image: #imageLiteral(resourceName: "RandomBeer"))),
				 Product(title: "Mere", description: "D'alea bune", id: "32afsdfk312", price: 9.8, image: ImageWrapper(image: #imageLiteral(resourceName: "Apple"))),
				 Product(title: "Lapte Dana", description: "0,5l", id: "1321djascmr09213asd",price: 25.0, image: ImageWrapper(image: #imageLiteral(resourceName: "Steak")))]

class FavoritesViewController: UITableViewController {
	@IBAction func removeFromFavorites(_ sender: Any) {

	}
	override func viewDidLoad() {
		configureNavigationBar()
	}
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		if favorites.count == 0 {
			return 1
		} else {
			return favorites.count
		}
	}
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if favorites.count == 0 {
			let cell = tableView.dequeueReusableCell(withIdentifier: "noFavoritesCell")
			return cell ?? UITableViewCell()
		} else {
			let cell = tableView.dequeueReusableCell(withIdentifier: "productTableViewCell") as? FavoriteTableViewCell
			cell?.productImageView.image = favorites[indexPath.row].image?.image
			cell?.productTitleLabel.text = favorites[indexPath.row].title
			cell?.productDescriptionLabel.text = favorites[indexPath.row].description
			cell?.priceLabel.text = String(favorites[indexPath.row].price)
			cell?.configureShoppingCartCell()
			return cell ?? UITableViewCell()
		}
	}
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		if favorites.count == 0 {
			return 44
		} else {
			return 130
		}
	}
}
