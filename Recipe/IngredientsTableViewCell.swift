//
//  IngredientsTableViewCell.swift
//  Recipe
//
//  Created by TinaTien on 2015/11/9.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class IngredientsTableViewCell: UITableViewCell {
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
