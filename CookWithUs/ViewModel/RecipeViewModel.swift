//
//  RecipeViewModel.swift
//  CookWithUs
//
//  Created by Meera R on 9/29/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import Foundation
import UIKit
class RecipeViewModel{
    
    private lazy var recipe : Recipe=loadRecipe()
    
    private func loadRecipe()->Recipe{
       return sampleRecipe()
    }
    
    private func sampleRecipe() -> Recipe{
        let recipe=Recipe(recipeId:1,recipeName: "Lime Juice", servings: 2, totalTime: "10 minutes",   recipeCover: UIImage())
        return recipe
    }
    
    
    
}
