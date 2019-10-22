//
//  RecipeDirections.swift
//  CookWithUs
//
//  Created by Meera R on 10/1/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import Foundation
import UIKit

class RecipeDirectionsDataSource: NSObject, UITableViewDataSource {
    
    
    var recipeViewController = RecipeViewController()
    
    var recipe = Recipe (recipeId: "Recipe_1", recipeName: "Lime Juice", servings: 2, totalTime: "20 minutes", recipeCover:UIImage(named:"book.jpg")!,ingredientCount:3)
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //var ingredients = recipe.getIngredients(recipeId: recipe.recipeId)
        print (indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "DirectionsCell", for: indexPath) as! DirectionsCell
        cell.resetContent()
         //cell.setContent(directions:recipe.getDirection(recipeId: recipe.recipeId, at: indexPath.row))
        return cell
        
    }
}
