//
//  CategoryTableViewController.swift
//  Shop-Swag
//
//  Created by Dũng Võ on 3/17/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryIdentifier", for: indexPath) as! CategoryTableViewCell
        
        let category = DataService.instance.getCategories()[indexPath.row]
        
        cell.updateTableViewCell(with: category)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        
        performSegue(withIdentifier: "ProductTableVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productTableVC = segue.destination as? DetailCategoryTableViewController {
            navigationItem.backBarButtonItem?.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            let indexPath = tableView.indexPathForSelectedRow!
            let category = DataService.instance.getCategories()[indexPath.row]
            productTableVC.navigationItem.title = category.title
            productTableVC.initProducts(category: category)
        }
    }
    

   

}
