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
     var recipeIngredientsDB=RecipeIngredientsDB()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setContent(recipeId:String,index:String){
        
       // ingredientLabel.text = "\(ingredient.itemNo).  \(ingredient.item) - \(Int(ingredient.qty)) \(ingredient.unit)"
        recipeIngredientsDB.delegate=self
        recipeIngredientsDB.getRecipeIngredients(recipeId: recipeId, index: index)
    }
    
    public func resetContent() {
        ingredientLabel.text = ""
    }
}
extension IngredientCell: RecipeIngredientDBDelegate{
    
    func loadRecipeIngredient(_ recipeIngredient: Ingredient) {
        ingredientLabel.text = "\(recipeIngredient.itemNo).  \(recipeIngredient.item) - \(Int(recipeIngredient.qty)) \(recipeIngredient.unit)"
    }
    
    
}

