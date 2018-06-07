//
//  ViewController.swift
//  WindowShopper
//
//  Created by DragosRotaru on 22/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

	@IBOutlet weak var usernameTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	@IBOutlet weak var logInButton: UIButton!
	@IBOutlet weak var logoLabel: UILabel!
	@IBOutlet weak var usernameLabelTopConstraint: NSLayoutConstraint!
	@IBOutlet weak var logInButtonBottomConstraint: NSLayoutConstraint!
	@IBAction func login(_ sender: Any) {
		performSegue(withIdentifier: "logInSegue", sender: self)
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		self.usernameLabelTopConstraint.constant = -self.view.frame.height/2
		self.logInButtonBottomConstraint.constant = -self.view.frame.height/2
		self.dismissKeyboardOnOutsideTap()
//		createGradientLayer(firstColor: UIColor(red: 71.0/255.0, green: 237.0/255.0, blue: 247.0/255.0, alpha: 1.0), secondColor: UIColor(red: 255.0/255.0, green: 16.0/255.0, blue: 89.0/255.0, alpha: 1.0))
		animateLogIn()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	override func viewDidAppear(_ animated: Bool) {
		self.view.layoutIfNeeded()
		UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseOut, animations: {
			self.usernameLabelTopConstraint.constant = self.view.frame.midY - 85.5
			self.logInButtonBottomConstraint.constant = self.view.frame.midY - 137.5
			self.view.layoutIfNeeded()
			}, completion: nil)
	}
}

extension LogInViewController {
	func animateLogIn() {
		UIView.animate(withDuration: 1.0, delay: 1.0, animations: {
			self.logInButton.alpha = 0
			self.logInButton.alpha = 1
			self.logoLabel.alpha = 0
			self.logoLabel.alpha = 1.0
		})
	}
}

