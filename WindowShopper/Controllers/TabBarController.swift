//
//  TabBarController.swift
//  WindowShopper
//
//  Created by DragosRotaru on 29/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
	override func viewDidLoad() {
		//self.tabBar.isTranslucent = false
		self.tabBar.barTintColor = UIColor(red: 67.0/255.0, green: 67.0/255.0, blue: 70.0/255.0, alpha: 1.0)
		
	}
	func animateTabBarItem(item: Int) {
		UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
			self.tabBar.subviews[item].subviews.first?.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
			self.tabBar.subviews[item].subviews.first?.transform = CGAffineTransform(rotationAngle: 0)
			//self.tabBar.subviews[item].transform = CGAffineTransform(rotationAngle: 0)
		}, completion: nil)
	}
}
