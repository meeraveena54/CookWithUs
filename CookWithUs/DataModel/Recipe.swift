//
//  Recipe.swift
//  CookWithUs
//
//  Created by Meera R on 9/29/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import Foundation
import UIKit
struct Recipe{
    var recipeId : Double
    var recipeName : String
    static let defaultrecipeCover = UIImage (named: "DefaultRecipe.jpg")
    var servings : Int
    var totalTime : String
    var ingredients : [Ingredient] {
        get{
            return getIngredients(recipeId:self.recipeId)
        }
    }
    var directions: [RecipeDirections]{
        get{
            return getDirections(recipeId:self.recipeId)
        }
    }
    var recipeCover : UIImage
    
    func getIngredients(recipeId : Double)->[Ingredient]
    {
        let ingredients=[Ingredient(recipeId:1,itemNo:1,item:"Lime",qty:1,unit:"nos"),
                         Ingredient(recipeId:1,itemNo:2,item:"Sugar",qty:1,unit:"tbsp"),
                         Ingredient(recipeId:1,itemNo:3,item:"Water",qty:2,unit:"cups")
        ]
        
        return ingredients
    }
    
    func getDirections(recipeId : Double)->[RecipeDirections]
    {
        let  directions = [RecipeDirections (recipeId:1,stepNo:1,description: "Squeeze juice out of lemon"),
                           RecipeDirections (recipeId:1,stepNo:2,description: "Dissolve sugar in water"),
                           RecipeDirections (recipeId:1,stepNo:3,description: "Add lemon juice to sugar solution")]
        
        return directions
    }
    
    func getIngredient(recipeId : Double , at index : Int)->Ingredient
    {
        let ingredients=[Ingredient(recipeId:1,itemNo:1,item:"Lime",qty:1,unit:"nos"),
                         Ingredient(recipeId:1,itemNo:2,item:"Sugar",qty:1,unit:"tbsp"),
                         Ingredient(recipeId:1,itemNo:3,item:"Water",qty:2,unit:"cups")
        ]
        
        //print( index)
        return ingredients[index]
    }
    
    func getDirection(recipeId : Double, at index : Int)->RecipeDirections
    {
        let  directions = [RecipeDirections (recipeId:1,stepNo:1,description: "Squeeze juice out of lemon"),
                           RecipeDirections (recipeId:1,stepNo:2,description: "Dissolve sugar in water"),
                           RecipeDirections (recipeId:1,stepNo:3,description: "Add lemon juice to sugar solution")]
        
        return directions[index]
    }
   
    init( recipeId:Double,recipeName : String,servings : Int,totalTime : String, recipeCover : UIImage){
        self.recipeId=recipeId
        self.recipeName=recipeName
        self.servings=servings
        self.totalTime=totalTime
        self.recipeCover=recipeCover
    }
    
}
