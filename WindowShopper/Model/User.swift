//
//  User.swift
//  WindowShopper
//
//  Created by DragosRotaru on 31/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation

class User {
	var companyName: String
	var email: String
	var companyID: String
	var details: [String]

	public init(companyName: String, email: String, companyID: String) {
		self.companyName = companyName
		self.companyID = companyID
		self.email = email
		self.details = [companyName, companyID, email]
	}
}
