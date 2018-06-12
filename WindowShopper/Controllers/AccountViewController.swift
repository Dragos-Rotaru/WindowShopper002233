//
//  AccountViewController.swift
//  WindowShopper
//
//  Created by DragosRotaru on 11/06/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

var labels = ["Firma", "CUI", "Adresa de e-mail"]

class AccountViewController: UITableViewController {

	//MARK: Properties
	fileprivate var user: User!

	//MARK: Actions
	@IBAction func buttonAction(_ sender: Any) {
		if let sender = sender as? UIButton {
			switch sender.titleLabel?.text {
			case "Settings":
				performSegue(withIdentifier: "settingsSegue", sender: sender)
			case "Log Out":
				performSegue(withIdentifier: "signOutSegue", sender: sender)
			default:
				break
			}
		}
	}
	//MARK: View lifecycle
	override func viewDidLoad() {
		configureNavigationBar()
		user = User(companyName: "S.C. Companie S.R.L", email: "companie@office.com", companyID: "6859662")
	}
	//MARK: Tableview Datasource
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 5
	}
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		switch indexPath.row {
		case 0...2:
			let cell = tableView.dequeueReusableCell(withIdentifier: "userInfoTableViewCell") as? UserInfoTableViewCell
			cell?.descriptionLabel.text = labels[indexPath.row]
			cell?.detailLabel.text = user.details[indexPath.row]
			cell?.configureAccountCell()
			return cell ?? UITableViewCell()
		case 3:
			let cell = tableView.dequeueReusableCell(withIdentifier: "accountActionTableViewCell") as? AccountActionTableViewCell
			cell?.actionButton.setTitle("Settings", for: .normal)
			return cell ?? UITableViewCell()
		case 4:
			let cell = tableView.dequeueReusableCell(withIdentifier: "accountActionTableViewCell") as? AccountActionTableViewCell
			cell?.actionButton.setTitle("Log Out", for: .normal)
			return cell ?? UITableViewCell()
		default:
			return UITableViewCell()
		}
	}
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		if indexPath.row < 3 {
			return 80
		} else {
			return 44.0
		}
	}

}
