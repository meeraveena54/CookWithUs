//
//  DBConnection.swift
//  CookWithUs
//
//  Created by Meera R on 10/3/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import Foundation
import Firebase
class DBConnection{
    static let recipeMaster="recipeMaster"
    static let recipeIngredients="recipeIngredients"
    static let recipes="Recipes"
    static let recipeDirections="RecipeDirections"
    static let ref=Database.database().reference()
    static let recipeNamesRef=Database.database().reference(withPath: recipeMaster)
    static let recipeIngredientsRef=Database.database().reference(withPath: recipeIngredients)
    static let recipesRef=Database.database().reference(withPath: recipes)
    static let recipeDirectionsRef=Database.database().reference(withPath: recipeDirections)
}
