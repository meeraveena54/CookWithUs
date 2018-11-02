//
//  RecipeViewController.swift
//  CookWithUs
//
//  Created by Meera R on 9/25/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import UIKit

class RecipeViewController: BaseViewController {
    
    var recipesDB=RecipesDB()
    var recipeViewModel=RecipeViewModel()
    var recipeIngredientsDB=RecipeIngredientsDB()
    var recipe : Recipe = Recipe (recipeId: "Recipe_1", recipeName: "Lime Juice", servings: 2, totalTime: "20 minutes", recipeCover:UIImage(named:"book.jpg")!,ingredientCount:3)
    
    var ingredientCount:Int!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var recipeName: UILabel!
    
    @IBOutlet weak var directionsTableView: UITableView!
   
    
    override func viewDidLoad() {
        
        print ("Recipe View Did Load")
        super.viewDidLoad()
        tableView.register(UINib(nibName: "IngredientCell", bundle: nil), forCellReuseIdentifier: "IngredientCell")
        
        directionsTableView.register(UINib(nibName: "DirectionsCell", bundle: nil), forCellReuseIdentifier: "DirectionsCell")
        recipesDB.getRecipeDetails(recipeId: "Recipe_1")
        recipesDB.delegate = self
        
       // recipeIngredientsDB.getRecipeIngredients(recipeId:"Recipe_1")
        //recipeIngredientsDB.getIngredient(at:0)
        //setRecipeName(recipeName: recipeName)
       // setRecipeBasicDetails(recipeId: "Recipe_1")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setIngredientCount(_ recipeId:String)->Int{
        return ingredientCount ?? 3
    }
}
extension RecipeViewController:RecipeDBDelegate{
    func loadRecipeBasicDetails(_ recipeBasicDetails: Recipe) {
        recipeName.text = recipeBasicDetails.recipeName
        ingredientCount=recipeBasicDetails.ingredientCount
    }
    
}

