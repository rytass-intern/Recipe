//
//  ShowIngredientsTableViewCell.swift
//  Recipe
//
//  Created by TinaTien on 2015/11/9.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class ShowIngredientsTableViewCell: UITableViewCell {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
