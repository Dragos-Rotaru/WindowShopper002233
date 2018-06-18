//
//  CameraViewController.swift
//  WindowShopper
//
//  Created by DragosRotaru on 29/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

class CameraViewController: UIViewController {

	@IBOutlet weak var productFoundView: UIView!
	@IBOutlet weak var productTitleLabel: UILabel!
	@IBOutlet weak var addToCartButton: UIButton!
	@IBOutlet weak var addToFavorites: UIButton!
	@IBOutlet weak var productFoundLeadingConstraint: NSLayoutConstraint!
	@IBOutlet weak var cameraImage: UIImageView!
	@IBAction func addToCart(_ sender: Any) {
		if let tabbar = self.tabBarController as? TabBarController {
			tabbar.animateTabBarItem(item: 2)
		}
	}
	@IBAction func addToFavorites(_ sender: Any) {
		if let tabbar = self.tabBarController as? TabBarController {
			tabbar.animateTabBarItem(item: 3)
		}
	}

	override func viewDidLoad() {
		//productFoundView.isHidden = true
		addToCartButton.isHidden = true
		addToFavorites.isHidden = true
		productTitleLabel.isHidden = true
		productFoundView.layer.cornerRadius = 15.0
		productFoundView.clipsToBounds = true
		productFoundView.alpha = 0.65
		addToCartButton.alpha = 1
		productFoundLeadingConstraint.constant = 363.0
		productTitleLabel.text = ""
		cameraImage.image = #imageLiteral(resourceName: "CameraScanner")
	}

	override func viewDidAppear(_ animated: Bool) {
		self.view.layoutIfNeeded()
		productPopUp()
		animateConstraint()
	}

	func productPopUp() {
		UIView.animate(withDuration: 1.0, delay: 0.0, animations: {
			self.productFoundView.layer.cornerRadius = 8.0
			self.productFoundLeadingConstraint.constant = 20.0
			self.productTitleLabel.text = "Product title"
			self.view.layoutIfNeeded()
		})
	}

	func animateConstraint() {
		UIView.animate(withDuration: 1.0, delay: 3.0, options: .curveEaseOut, animations: {
			self.addToFavorites.isHidden = false
			self.addToCartButton.isHidden = false
			self.productTitleLabel.isHidden = false
		})
	}
}
