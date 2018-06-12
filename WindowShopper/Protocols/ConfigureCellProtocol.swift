//
//  ShoppingCellProtocol.swift
//  WindowShopper
//
//  Created by DragosRotaru on 31/05/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

protocol ConfigureCellProtocol {
	func configureShoppingCartCell()
	func configureAccountCell()
}

extension ConfigureCellProtocol where Self: UITableViewCell {
	func configureShoppingCartCell() {
		self.contentView.layer.cornerRadius = 8
		self.contentView.layer.masksToBounds = true
		self.contentView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
		self.contentView.layer.shadowOpacity = 0.23
		self.contentView.layer.shadowRadius = 4
	}
	func configureAccountCell() {
		self.contentView.layer.cornerRadius = 8
		self.contentView.layer.masksToBounds = true
		self.contentView.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
		self.contentView.layer.shadowOpacity = 0.15
		self.contentView.layer.shadowRadius = 1
	}
}

