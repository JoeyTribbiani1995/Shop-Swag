//
//  Category.swift
//  Shop-Swag
//
//  Created by Dũng Võ on 3/17/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import Foundation

struct Category {
    private (set) public var title : String
    private (set) public var imageName : String
    
    init(title : String , imageName : String) {
        self.title = title
        self.imageName = imageName
    }
}
