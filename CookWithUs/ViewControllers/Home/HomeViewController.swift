//
//  HomeViewController.swift
//  CookWithUs
//
//  Created by Meera R on 9/24/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    @IBOutlet weak var button: UIButton!
    
    var dbConnectionRef=DBConnection.ref
    //var recipesDBRef=RecipesDB()
    var recipeViewController=RecipeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func setUpUI() {
        super.setUpUI()
        self.title = "Home"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadRecipe(_ sender: UIButton) {
        
        let recipeViewController = RecipeViewController(nibName: "RecipeViewController", bundle: nil)
        //recipeViewController.transitioningDelegate=self as? UIViewControllerTransitioningDelegate
        self.navigationController?.pushViewController(recipeViewController, animated: true)
        
       print ("Recipe View Loading")
    }


}


