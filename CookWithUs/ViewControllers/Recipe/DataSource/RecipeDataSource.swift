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
    var recipeIngredientsDB=RecipeIngredientsDB()
    var recipe : Recipe = Recipe (recipeId:"Recipe_1", recipeName: "Lime Juice", servings: 2, totalTime: "20 minutes", recipeCover:UIImage(named:"book.jpg")!,ingredientCount:3)
    
    //var ingredientCount:Int!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let ingredientCount=recipeViewController.setIngredientCount(recipe.recipeId)
        print(ingredientCount)
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //var ingredients = recipe.getIngredients(recipeId: recipe.recipeId)
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath) as! IngredientCell
        cell.resetContent()
        print (indexPath.row)
        cell.setContent(recipeId:recipe.recipeId,index:"Item_\(indexPath.row+1)")
       // recipeIngredientsDB.getRecipeIngredients(recipeId:recipe.recipeId,index:"Item_\(indexPath.row)",cell)
        //cell.textLabel?.text = "\(currIngredient.itemNo).  \(currIngredient.item) - \(Int(currIngredient.qty)) \(currIngredient.unit)"
       //cell.setContent(ingredient:recipeIngredientsDB.getIngredient(recipe.recipeId,  indexPath.row ))
        return cell

    }
    
    
}



