//
//  DirectionsViewCell.swift
//  CookWithUs
//
//  Created by Meera R on 10/1/18.
//  Copyright © 2018 Meera. All rights reserved.
//

import UIKit

class DirectionsCell: UITableViewCell {

    @IBOutlet weak var directionsCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setContent(directions: RecipeDirections){
        directionsCell.text = "\(directions.stepNo). \(directions.description)"
    }
    
    public func resetContent() {
        directionsCell.text = ""
    }
    
}
