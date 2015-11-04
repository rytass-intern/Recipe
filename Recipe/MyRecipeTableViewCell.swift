//
//  MyRecipeTableViewCell.swift
//  Recipe
//
//  Created by TinaTien on 2015/10/27.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class MyRecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var editRecipe: UIButton!
    @IBOutlet weak var recipePic: UIImageView!
    @IBOutlet weak var recipeName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
