//
//  RecipesDB.swift
//  CookWithUs
//
//  Created by Meera R on 10/10/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import Foundation
import Firebase
class RecipesDB{
    
    var dbConnection = DBConnection()
    //lazy var recipeDetails : Recipe = getRecipeDetails(recipeId:"Recipe_1")
    var recipeIngredientsDB :RecipeIngredientsDB=RecipeIngredientsDB()
    var currentRecipe=NSDictionary()
    var delegate:RecipeDBDelegate?
    

   func getRecipeDetails(recipeId:String){
        
        let recipeDBRef=DBConnection.recipesRef
        let Id : String=recipeId
        var recipeName = String()
        var servings = Int()
        var totalTime = String()
        var recipeCover=UIImage(named:"book.jpg")!
        var ingCount=Int()
        //var localRecipe=Recipe()

        recipeDBRef.child(recipeId).observe(.value
            ,with: {snapshot in
               if let recipes = snapshot.value as! NSDictionary?
            {
               
                recipeName = recipes["Name"] as! String
                servings = recipes["Servings"] as! Int
                totalTime = recipes["TotalTime"] as! String
                ingCount=recipes["IngredientCount"] as! Int
                print (recipeName)
                //print (self.recipeDetails)
                //print (self.recipeIngredientsDB.getRecipeIngredients(recipeId: "Recipe_1"))
                let recipe=Recipe(recipeId:Id,recipeName: recipeName, servings: servings, totalTime: totalTime,   recipeCover: recipeCover,ingredientCount:ingCount)
                print (recipe)
                self.delegate?.loadRecipeBasicDetails(recipe)
                
            }
         
        }){ (error) in
            print(error.localizedDescription)
        }
    
    }
}


