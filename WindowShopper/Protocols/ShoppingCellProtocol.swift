//
//  ShoppingCellProtocol.swift
//  WindowShopper
//
//  Created by DragosRotaru on 31/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

protocol ShoppingCellProtocol {
	func configureCell()
}

extension ShoppingCellProtocol where Self: UITableViewCell {
	func configureCell() {
		self.contentView.layer.cornerRadius = 8
		self.contentView.layer.masksToBounds = true
		self.contentView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
		self.contentView.layer.shadowOpacity = 0.23
		self.contentView.layer.shadowRadius = 4
	}
}

