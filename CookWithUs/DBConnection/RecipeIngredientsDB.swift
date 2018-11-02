//
//  RecipeIngredientsDB.swift
//  CookWithUs
//
//  Created by Meera R on 10/3/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import Foundation
import Firebase
class RecipeIngredientsDB{
    
    var dbConnection = DBConnection()
    var ingredients:[Ingredient]?
    var delegate:RecipeIngredientDBDelegate?
    var ingredientCountDelegate:RecipeIngredientCountDelegate?
    
    func getRecipeIngredients(recipeId:String,index:String){
        var recipeIngredientsDBRef=DBConnection.recipeIngredientsRef
        print(index)
        print(recipeIngredientsDBRef.child(recipeId).child(index))
        getIngredientCount(recipeId:recipeId)
        recipeIngredientsDBRef.child(recipeId).observe(.value
            ,with: {snapshot in
                
                if let recipeIngredients = snapshot.value as! NSDictionary?
                {
                    var itemNo = index
                    var item = recipeIngredients["Name"] as! String
                    var qty = recipeIngredients["qty"] as! Double
                    var unit = recipeIngredients ["Units"] as! String
                    let currIngredient=Ingredient(recipeId: recipeId, itemNo: itemNo, item: item, qty: qty, unit: unit)
                       print(currIngredient)
                        self.delegate?.loadRecipeIngredient(currIngredient)
 
                }
                
        }){ (error) in
            print(error.localizedDescription)
        }
        
        
    }
    func saveIngredient(_ currentIngredient:Ingredient){
        
            self.ingredients?.append(currentIngredient)

    }
    
    func getIngredientCount(recipeId:String/*observe:(DataEventType,DataSnapshot)*/){
        let recipeIngredientsDBRef=DBConnection.recipeIngredientsRef
        var ingredientCount:Int?
        print("Starting observing")
        let closure = {recipeIngredientsDBRef.child(recipeId).observe(.value, with: { (snapshot: DataSnapshot!) in
            ingredientCount = Int(snapshot.childrenCount)
            if let ingredientCount=ingredientCount{
                self.ingredientCountDelegate?.getIngredientCount(ingredientCount)
                
            }
            //print(snapshot.childrenCount)
            
        })}
        closure()
    }
}

