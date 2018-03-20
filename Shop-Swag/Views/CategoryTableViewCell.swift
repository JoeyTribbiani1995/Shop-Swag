//
//  CategoryTableViewCell.swift
//  Shop-Swag
//
//  Created by Dũng Võ on 3/17/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func updateTableViewCell(with category : Category){
        categoryImageView.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }

}
