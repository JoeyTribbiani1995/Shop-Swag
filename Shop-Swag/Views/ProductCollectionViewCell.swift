//
//  ProductCollectionViewCell.swift
//  Shop-Swag
//
//  Created by Dũng Võ on 3/20/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productTitleLabel: UILabel!
    
    
    func updateView(with product : Product){
        productImageView.image = UIImage(named: product.imageName)
        productTitleLabel.text = product.title
        productPriceLabel.text = product.price
    }
    
}
