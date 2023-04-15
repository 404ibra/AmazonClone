//
//  ProductModel.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 15.04.2023.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: String
    var category: String
}


extension  Product {
   static let categories = [
       "Home & Kitchen",
       "Sports & Outdoors",
       "Toys & Games",
       "Books",
       "Clothing, shoes, and jewelry",
       "Beauty & Personal Care",
       "Video Games"
    ]


   static let productNames = [
        "Keys",
        "XPress",
        "InstaPress",
        "Wear",
        "Kit",
        "Wallet",
        "Supply",
        "Knife"]

    static func getFakeData() -> [Product] {
        var prds = [Product]()
        while prds.count != 10 {
            prds.append(Product(name: generateFakeName(), image: "pro_img_"+String(prds.count-1), price: String(Int.random(in: 90...2600)) + "₺" , category: categories.randomElement()!))
        }
        return prds
        
    }
    
    static func generateFakeName() -> String {
        return productNames.randomElement()! + " " + productNames.randomElement()!
    }
}


