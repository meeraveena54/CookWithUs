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


}

