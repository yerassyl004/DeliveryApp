//
//  data.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 20.10.2023.
//

import Foundation
import UIKit
import SQLite3


struct Data {
    let name: String
    let image: String
    let price: String
    
    init(name: String, image: String, price: String) {
        self.name = name
        self.image = image
        self.price = price
    }
}

var data: [Data] = [Data(name: "Neapolitan Pizza", image: "Pizza14", price: "3990"),
                    Data(name: "Tavern Style Pizza", image: "Pizza13", price: "2990"),
                    Data(name: "Detroit Style Pizza", image: "Pizza12", price: "1990"),
                    Data(name: "Hawaiian Pizza", image: "Pizza11", price: "2490"),
                    Data(name: "Greek Pizza", image: "Pizza10", price: "2290"),
                    Data(name: "New York Style Pizza", image: "Pizza6", price: "3490"),
                    Data(name: "Sicilian Pizza", image: "Pizza7", price: "2790"),
                    Data(name: "Margherita Pizza", image: "Pizza8", price: "2190"),
                    Data(name: "California Pizza", image: "Pizza9", price: "2090"),
                    Data(name: "Chicago Deep-Dish Pizza", image: "Pizza5", price: "1890"),
                    Data(name: "Pepperoni Pizza", image: "Pizza4", price: "2590"),
                    Data(name: "Cheese Pizza", image: "Pizza3", price: "3190"),
                    Data(name: "Meat Pizza", image: "Pizza2", price: "3490"),
                    Data(name: "Veggie Pizza", image: "Pizza1", price: "3090")

]

struct Sourse {
    static func makeRows() -> [Data] {
        [
            .init(name: "Neapolitan Pizza", image: "Pizza14", price: "3990"),
            .init(name: "Tavern Style Pizza", image: "Pizza13", price: "2990"),
            .init(name: "Detroit Style Pizza", image: "Pizza12", price: "1990"),
            .init(name: "Hawaiian Pizza", image: "Pizza11", price: "2490"),
            .init(name: "Greek Pizza", image: "Pizza10", price: "2290"),
            .init(name: "Sicilian Pizza", image: "Pizza7", price: "2790"),
            .init(name: "Margherita Pizza", image: "Pizza8", price: "2190"),
            .init(name: "California Pizza", image: "Pizza9", price: "2090"),
            .init(name: "Chicago Deep-Dish Pizza", image: "Pizza5", price: "1890"),
            .init(name: "Pepperoni Pizza", image: "Pizza4", price: "2590"),
            .init(name: "Cheese Pizza", image: "Pizza3", price: "3190"),
            .init(name: "Meat Pizza", image: "Pizza2", price: "3490"),
            .init(name: "Veggie Pizza", image: "Pizza1", price: "3090")
        ]
    }
}

struct BasketList {
    
    static var basketData = [
        Data.init(name: "", image: "", price: "")
    ]
    
    static func basket() -> [Data] {
        
        return basketData
    }
}

struct LikedList {
    static func getLike() -> [Data] {
        [
            
        ]
    }
}


var basketList: [Data] = []

var likedList: [Data] = []

var viewList: [Data] = []

