//
//  Product.swift
//  SweaterShop
//
//  Created by Hyun Seo Jung on 8/8/24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [
    Product(name: "Sad sweater", image: "sweater1", price: 54),
    Product(name: "Green sweater", image: "sweater2", price: 44),
    Product(name: "Hot sweater", image: "sweater3", price: 32),
    Product(name: "Gray sweater", image: "sweater4", price: 75),
    Product(name: "Snow sweater", image: "sweater5", price: 78),
    Product(name: "Pink sweater", image: "sweater6", price: 34),
    Product(name: "Blue sweater", image: "sweater7", price: 23),
    Product(name: "Steert sweater", image: "sweater8", price: 12),
]

