//
//  IngredientCell.swift
//  CookWithUs
//
//  Created by Meera R on 9/30/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import UIKit

class IngredientCell: UITableViewCell {

    @IBOutlet weak var ingredientLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setContent(ingredient: Ingredient){
        ingredientLabel.text = ingredient.item
    }
    
    public func resetContent() {
        ingredientLabel.text = ""
    }
}
