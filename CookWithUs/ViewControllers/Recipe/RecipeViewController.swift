//
//  RecipeViewController.swift
//  CookWithUs
//
//  Created by Meera R on 9/25/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import UIKit

class RecipeViewController: BaseViewController {

    var recipe : Recipe = Recipe (recipeId: 1, recipeName: "Lime Juice", servings: 2, totalTime: "20 minutes", recipeCover:UIImage(named:"book.jpg")!)
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var recipeName: UILabel!
    
    func setRecipeName(recipeName : UILabel){
        
        recipeName.text = recipe.recipeName
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "IngredientCell", bundle: nil), forCellReuseIdentifier: "IngredientCell")
        setRecipeName(recipeName: recipeName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
