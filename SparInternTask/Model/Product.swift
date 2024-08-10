//
//  Product.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 08.08.2024.
//

import SwiftUI

struct Category {
    var name: String
    var color: Color
}

struct Product: Identifiable {
    var id = UUID()
    let imageURL: String
    var name: String
    var price: Double
    var discountSize: Int?
    var countryOfOrigin: String?
    var showDiscount: Bool = false
    var switchAmount: Bool = false
    var rating: Double
    var reviews: Int
    var category: Category?
    
}

struct MockData {
    
    static let categoryNewItems = Category(name: "Новинки", color: Color.categoryPurple)
    static let categoryCardPrice = Category(name: "Цена по карте", color: Color.categoryRed)
    static let categoryHitOnPrice = Category(name: "Удар по ценам", color: Color.categoryGreen)
    
    static let sampleProduct = Product(imageURL: "empty-product",
                                       name: "Test product",
                                       price: 45.6,
                                       discountSize: 25,
                                       countryOfOrigin: "Франция",
                                       showDiscount: true,
                                       switchAmount: true,
                                       rating: 4.5,
                                       reviews: 19,
                                       category: categoryNewItems)
    
    static let ProductsTest = [sampleProduct, sampleProduct, sampleProduct, sampleProduct]
    
    static let Products = [ Product(imageURL: "meat2",
                                    name: "Огурцы тепличные cадово-огородные",
                                    price: 59.2,
                                    discountSize: 25,
                                    countryOfOrigin: "Франция",
                                    showDiscount: true,
                                    rating: 4.5,
                                    reviews: 19,
                                    category: categoryNewItems),
                            
                            Product(imageURL: "meat1",
                                    name: "Дорадо Охлажденная Непотрошеная 300-400г",
                                    price: 199,
                                    discountSize: 39,
                                    countryOfOrigin: "Франция",
                                    rating: 4.1,
                                    reviews: 19,
                                    category: categoryCardPrice)
                            ,
                            
                            Product(imageURL: "chickenlegs",
                                    name: "Дорадо Охлажденная Непотрошеная 300-400г",
                                    price: 199,
                                    discountSize: 39,
                                    countryOfOrigin: "Франция",
                                    rating: 4.1,
                                    reviews: 19),
                            Product(imageURL: "meat3",
                                    
                                    name: "Мясо Охлажденная Непотрошеная 300-400г",
                                    price: 169,
                                    discountSize: 4,
                                    countryOfOrigin: "Франция",
                                    rating: 4.1,
                                    reviews: 19),
                            
                            Product(imageURL: "meat2",
                                    name: "Дорадо Охлажденная Непотрошеная 300-400г",
                                    price: 250,
                                    discountSize: 39,
                                    countryOfOrigin: "Франция",
                                    rating: 4.1,
                                    reviews: 19,
                                    category: categoryHitOnPrice),
                            
                            Product(imageURL: "meat1",
                                    name: "Дорадо Охлажденная Непотрошеная 300-400г",
                                    price: 360,
                                    discountSize: 39,
                                    countryOfOrigin: "Франция",
                                    rating: 4.1,
                                    reviews: 19),
                            
                            Product(imageURL: "energetic",
                                    name: "Энергетический Напиток AdrenaIine Rush 0,449л ж/б",
                                    price: 70,
                                    discountSize: 10,
                                    countryOfOrigin: "Франция",
                                    rating: 4.1,
                                    reviews: 19)
    ]
}
