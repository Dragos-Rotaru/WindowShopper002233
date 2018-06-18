//
//  Ext+UIViewController.swift
//  WindowShopper
//
//  Created by DragosRotaru on 24/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController {

	//create background layer for log in screen
	func createGradientLayer(firstColor: UIColor, secondColor: UIColor) {
			var gradientLayer: CAGradientLayer!
			gradientLayer = CAGradientLayer()
	
			gradientLayer.frame = self.view.bounds
	
		gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
	
			self.view.layer.insertSublayer(gradientLayer, at: 0)
	}
	func configureNavigationBar() {
		navigationController?.navigationBar.barTintColor =
			UIColor(red: 67.0/255.0, green: 67.0/255.0, blue: 70.0/255.0, alpha: 1.0)
		navigationController?.navigationBar.titleTextAttributes =
			[NSAttributedStringKey.foregroundColor:UIColor(red: 255.0/255.0, green: 203.0/255.0, blue: 77.0/255.0, alpha: 1.0)]
	}
}
