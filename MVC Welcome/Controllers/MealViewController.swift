//
//  MealViewController.swift
//  MVC Welcome
//
//  Created by Denis Bystruev on 25/07/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class MealViewController: UIViewController {
    
    @IBOutlet var mealName: UILabel!
    @IBOutlet var mealPhoto: UIImageView!
    @IBOutlet var mealNotes: UITextView!
    @IBOutlet var mealRating: UILabel!
    @IBOutlet var mealTimestamp: UILabel!
    
    var meal: Meal!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        mealName.text = meal.name
        mealPhoto.image = meal.photo
        mealNotes.text = meal.notes
        mealRating.text = meal.stars
        mealTimestamp.text = meal.formattedTimestamp
    }

}
