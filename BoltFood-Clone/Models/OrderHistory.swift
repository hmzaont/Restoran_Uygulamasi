//
//  Order.swift
//  BoltFood
//
//  Created by Hamza ONAT on 9\06\2024.
//

import Foundation


struct OrderHistory {
    var image: String
    var title: String
    var price: Double
    var date: String
    
    static let orderHistory : [OrderHistory] = [
        OrderHistory(image: "chicken", title: "BurgerBuffs™", price: 71.40, date: "9 Haz, 2024 8:03 PM"),
        OrderHistory(image: "chicken", title: "PizzaCity™", price: 77.00, date: "9 Haz, 2024 8:47 PM"),
        OrderHistory(image: "pizza", title: "PasaportPizza™", price: 78.00, date: "9 Haz, 2024 8:48 PM"),
        OrderHistory(image: "pizza2", title: "HomeMadeBurger™", price: 76.40, date: "9 Haz, 2024 8:23 PM"),
        OrderHistory(image: "chicken2", title: "BurgerBuffs™", price: 61.40, date: "9 Haz, 2024 7:14 PM"),
        OrderHistory(image: "pizza3", title: "PizzaCity™", price: 75.00, date: "9 Haz, 2024 8:28 PM"),
        OrderHistory(image: "chicken", title: "HomeMadeBurger", price: 61.40, date: "9 Haz, 2024 1:43 PM"),
    ]
}
