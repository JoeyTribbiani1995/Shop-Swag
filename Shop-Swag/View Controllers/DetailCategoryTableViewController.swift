//
//  DetailCategoryTableViewController.swift
//  Shop-Swag
//
//  Created by Dũng Võ on 3/17/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import UIKit

class DetailCategoryTableViewController: UITableViewController ,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var productCollection : UICollectionView!
    
    private (set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollection.dataSource = self
        productCollection.delegate = self
    }
    
    func initProducts(category : Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCollectionViewCell {
            let product = products[indexPath.row]
            cell.updateView(with: product)
            return cell
        }
        
        return ProductCollectionViewCell()
    }
    
    
    
    
    

    
    

}
