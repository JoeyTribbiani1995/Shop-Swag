//
//  Product.swift
//  Shop-Swag
//
//  Created by Dũng Võ on 3/17/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import Foundation

struct Product {
    private (set) public var title : String
    private (set) public var price : String
    private (set) public var imageName : String
    
    
    init(title : String , price : String , imageName : String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
