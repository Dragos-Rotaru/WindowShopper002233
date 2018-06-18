//
//  FavoriteTableViewCell.swift
//  WindowShopper
//
//  Created by DragosRotaru on 14/06/2018.
//  Copyright © 2018 IBM. All rights reserved.
//

import Foundation
import UIKit

class FavoriteTableViewCell: UITableViewCell, ConfigureCellProtocol {
	@IBOutlet weak var productImageView: UIImageView!
	@IBOutlet weak var productTitleLabel: UILabel!
	@IBOutlet weak var productDescriptionLabel: UILabel!
	@IBOutlet weak var priceLabel: UILabel!
	@IBOutlet weak var removeProductButton: UIButton!
}
