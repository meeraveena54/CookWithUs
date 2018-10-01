//
//  RecipeDataSource.swift
//  CookWithUs
//
//  Created by Meera R on 9/30/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import UIKit

class RecipeDataSource: NSObject, UITableViewDataSource {
    
   
    var recipeViewController = RecipeViewController()
    
    var recipe : Recipe = Recipe (recipeId: 1, recipeName: "Lime Juice", servings: 2, totalTime: "20 minutes", recipeCover:UIImage(named:"book.jpg")!)
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipe.ingredients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //var ingredients = recipe.getIngredients(recipeId: recipe.recipeId)
        print (indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath) as! IngredientCell
        cell.resetContent()
        var currIngredient = recipe.getIngredient(recipeId : recipe.recipeId, at : indexPath.row )
        cell.textLabel?.text = "\(currIngredient.itemNo).  \(currIngredient.item) - \(Int(currIngredient.qty)) \(currIngredient.unit)"
      /*  cell.setContent(ingredient:recipe.getIngredient(recipeId : recipe.recipeId, at : indexPath.row ))*/
        return cell

    }
}
