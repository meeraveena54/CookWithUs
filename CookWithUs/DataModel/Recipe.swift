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
    
    
    var recipeId : String="Recipe_1"
    var recipeName : String = ""
    static let defaultrecipeCover = UIImage (named: "DefaultRecipe.jpg")
    var servings : Int = 2
    var totalTime : String = "20 mins"
    var ingredientCount : Int
   /* var ingredients : [Ingredient] {
        get{
            return getIngredients(recipeId:self.recipeId)
        }
    }
    var directions: [RecipeDirections]{
        get{
            return getDirections(recipeId:self.recipeId)
        }
    }*/
    var recipeCover : UIImage
    
   /* func getIngredients(recipeId : String)->[Ingredient]
    {
        var recipeIngredientsDB=RecipeIngredientsDB()
        let ingredients:[Ingredient]=recipeIngredientsDB.getRecipeIngredients(recipeId: recipeId) as [Ingredient]
        /*let ingredients=[Ingredient(recipeId:"Recipe_1",itemNo:"Item_1",item:"Lime",qty:1,unit:"nos"),
                         Ingredient(recipeId:"Recipe_1",itemNo:"Item_2",item:"Sugar",qty:1,unit:"tbsp"),
                         Ingredient(recipeId:"Recipe_1",itemNo:"Item_3",item:"Water",qty:2,unit:"cups")
        ])*/
       // ref.getRecipeDetails(recipeId: "Recipe_1")
        return ingredients
    }
    
    func getDirections(recipeId : String)->[RecipeDirections]
    {
        let  directions = [RecipeDirections (recipeId:"Recipe_1",stepNo:"Step_1",description: "Squeeze juice out of lemon"),
                           RecipeDirections (recipeId:"Recipe_1",stepNo:"Step_2",description: "Dissolve sugar in water"),
                           RecipeDirections (recipeId:"Recipe_1",stepNo:"Step_3",description: "Add lemon juice to sugar solution")]
        return directions
    }
    
    func getIngredient(recipeId : String , at index : Int)->Ingredient
    {
        /*let ingredients=[Ingredient(recipeId:"Recipe_1",itemNo:"Item_1",item:"Lime",qty:1,unit:"nos"),
                         Ingredient(recipeId:"Recipe_1",itemNo:"Item_2",item:"Sugar",qty:1,unit:"tbsp"),
                         Ingredient(recipeId:"Recipe_1",itemNo:"Item_3",item:"Water",qty:2,unit:"cups")
        ]
        */
        var recipeIngredientsDB=RecipeIngredientsDB()
        let ingredients=recipeIngredientsDB.getRecipeIngredients(recipeId: recipeId)
        //print( index)
        return ingredients[index]
    }
    
    func getDirection(recipeId : String, at index : Int)->RecipeDirections
    {
        let  directions = [RecipeDirections (recipeId:"Recipe_1",stepNo:"Step_1",description: "Squeeze juice out of lemon"),
                           RecipeDirections (recipeId:"Recipe_1",stepNo:"Step_2",description: "Dissolve sugar in water"),
                           RecipeDirections (recipeId:"Recipe_1",stepNo:"Step_3",description: "Add lemon juice to sugar solution")]
        
        return directions[index]
    }*/
   
    init( recipeId:String,recipeName : String,servings : Int,totalTime : String, recipeCover : UIImage,ingredientCount:Int){
        self.recipeId=recipeId
        self.recipeName=recipeName
        self.servings=servings
        self.totalTime=totalTime
        self.recipeCover=recipeCover
        self.ingredientCount=ingredientCount
    }
    
}
