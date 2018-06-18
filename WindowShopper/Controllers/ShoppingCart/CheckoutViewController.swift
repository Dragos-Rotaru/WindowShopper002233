//
//  CheckoutViewController.swift
//  WindowShopper
//
//  Created by DragosRotaru on 31/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

class CheckoutViewController: UIViewController {
	override func viewDidLoad() {
		navigationController?.navigationBar.barTintColor = UIColor(red: 67.0/255.0, green: 67.0/255.0, blue: 70.0/255.0, alpha: 1.0)
		navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor(red: 255.0/255.0, green: 203.0/255.0, blue: 77.0/255.0, alpha: 1.0)]
		navigationController?.navigationBar.tintColor = UIColor(red: 255.0/255.0, green: 203.0/255.0, blue: 77.0/255.0, alpha: 1.0)
	}
}
