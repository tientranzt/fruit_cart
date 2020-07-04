//
//  Fruit.swift
//  fruit_store
//
//  Created by tientran on 6/29/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import Foundation


struct Fruit : Identifiable, Equatable{
    var id = UUID()
    var prices : Float
    var image : String
    var name : String
    var weight : String
    var quatity : Int
    
    init(name: String, prices : Float, weight : String, image: String, quatity : Int) {
        self.name = name
        self.prices = prices
        self.weight = weight
        self.image = image
        self.quatity = quatity
    }
}



extension Fruit {
    static func all() -> [Fruit]{
        return [
            Fruit(name: "Water Melon", prices: 34.2, weight: "1kg", image: "fruit1",quatity: 1),
            Fruit(name: "Mangosteen", prices: 24, weight: "0.5kg", image: "fruit2",quatity: 1),
            Fruit(name: "Cacao", prices: 22, weight: "1kg", image: "fruit3",quatity: 1),
            Fruit(name: "Grapefruit", prices: 17, weight: "1kg", image: "fruit4",quatity: 1),
            Fruit(name: "Apple", prices: 42, weight: "1kg", image: "fruit5",quatity: 1),
            Fruit(name: "Grapefruit", prices: 19, weight: "1kg", image: "fruit6",quatity: 1),
            Fruit(name: "Saddle", prices: 21, weight: "1kg", image: "fruit7",quatity: 1),
            Fruit(name: "Lemon", prices: 12, weight: "1kg", image: "fruit8",quatity: 1),
            Fruit(name: "Cherry", prices: 11, weight: "1kg", image: "fruit9",quatity: 1),
            Fruit(name: "Banana", prices: 6, weight: "1kg", image: "fruit10",quatity: 1),
            Fruit(name: "Peach", prices: 9, weight: "1kg", image: "fruit11",quatity: 1),
            Fruit(name: "Strawberry", prices: 15, weight: "1kg", image: "fruit12",quatity: 1),
            Fruit(name: "Dragon Fruit", prices: 56, weight: "1kg", image: "fruit13",quatity: 1),
            Fruit(name: "Green Apple", prices: 23, weight: "1kg", image: "fruit15",quatity: 1),
            Fruit(name: "Lychee", prices: 45, weight: "1kg", image: "fruit16",quatity: 1),
            Fruit(name: "Melon", prices: 76, weight: "1kg", image: "fruit17",quatity: 1),
            Fruit(name: "Mango", prices: 33, weight: "1kg", image: "fruit18",quatity: 1),
            Fruit(name: "Mangosteens", prices: 41, weight: "1kg", image: "fruit19",quatity: 1),
            Fruit(name: "Grapes", prices: 23, weight: "1kg", image: "fruit20",quatity: 1),
            Fruit(name: "Orange", prices: 26, weight: "1kg", image: "fruit21",quatity: 1),
            Fruit(name: "Papaya", prices: 12, weight: "1kg", image: "fruit22",quatity: 1),
            Fruit(name: "Pumpkin", prices: 4, weight: "1kg", image: "fruit23",quatity: 1),
            Fruit(name: "Pineapple", prices: 90, weight: "1kg", image: "fruit24",quatity: 1),
            Fruit(name: "Pomegranates", prices: 71, weight: "1kg", image: "fruit25",quatity: 1)
        ]
    }
}
