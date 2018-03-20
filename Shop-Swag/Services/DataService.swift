//
//  DataService.swift
//  Shop-Swag
//
//  Created by Dũng Võ on 3/17/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title : "SHIRTS",imageName : "shirts.png"),
        Category(title : "HOODIES",imageName : "hoodies.png"),
        Category(title : "HATS",imageName : "hats.png"),
        Category(title : "DIGITAL",imageName : "digital.png"),
    ]
    
    private let hats = [
        Product(title: "Devslope Logo Hat Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslope Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslope Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslope Logo Hat SnapBack", price: "$22", imageName: "hat04.png"),
    ]
    
    private let hoodies = [
        Product(title: "Devslope Logo Hoodie Beanie", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslope Logo Hoodie Black", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslope Logo Hoodie White", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslope Logo Hoodie SnapBack", price: "$32", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
        Product(title: "Devslope Logo Shirt Beanie", price: "$32", imageName: "shirt01.png"),
        Product(title: "Devslope Logo Shirt Black", price: "$32", imageName: "shirt02.png"),
        Product(title: "Devslope Logo Shirt White", price: "$32", imageName: "shirt03.png"),
        Product(title: "Devslope Logo Shirt SnapBack", price: "$32", imageName: "shirt04.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title : String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
    
    
    
    
    
    
    
    
    
}
