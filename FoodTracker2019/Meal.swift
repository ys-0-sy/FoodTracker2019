//
//  Meal.swift
//  FoodTracker2019
//
//  Created by saito on 2019/09/13.
//  Copyright © 2019 yuta saito. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {

        // Initialization shoud fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
