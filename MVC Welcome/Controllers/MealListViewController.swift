//
//  MealListViewController.swift
//  MVC Welcome
//
//  Created by Denis Bystruev on 25/07/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class MealListViewController: UIViewController {
    
    // Connect view to the controller
    @IBOutlet var tableView: UITableView!
    
    // Connect model to the controller
    var meals = Meal.all

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "MealSegue" else { return }
        guard let selectedPath = tableView.indexPathForSelectedRow else { return }
        
        let destination = segue.destination as! MealViewController
        destination.meal = meals[selectedPath.row]
    }

}

extension MealListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell")!
        
                // Configure cell...
                let meal = meals[indexPath.row]
                cell.detailTextLabel?.text = meal.stars
                cell.imageView?.image = meal.photo
                cell.textLabel?.text = meal.name
        
                return cell
    }
}
