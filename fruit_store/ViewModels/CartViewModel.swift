//
//  CartViewModel.swift
//  fruit_store
//
//  Created by tientran on 7/1/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import SwiftUI


class CartViewModel: ObservableObject {
    @Published var listItemCart : [Fruit] = []
    @Published var quantity : Int = 0
    @Published var amount : Float = 0
    @Published var numberItemInCart : Int = 0
    func add(fruit : Fruit) {
        
        // return list exist fruit have 1 item
        let check = listItemCart.filter{$0.image == fruit.image}
        
        if check.count > 0{
            // find index of fruit exist
            let index = listItemCart.firstIndex(of: check[0])
            listItemCart[index!].quatity += 1
            countTotalAmount()
        }
        else{
            listItemCart.append(fruit)
            countTotalAmount()
        }
    }
    
    func updateQuantity(fruit: Fruit, isPlus: Bool)  {
        let check = listItemCart.filter{$0.image == fruit.image}
        if check.count > 0{
            
            // find index of fruit exist
            let index = listItemCart.firstIndex(of: check[0])
            if isPlus{
                listItemCart[index!].quatity += 1
                numberItemInCart += 1
                countTotalAmount()

            }
            else if numberItemInCart >= 1 && listItemCart[index!].quatity >= 1 {
                listItemCart[index!].quatity -= 1
                numberItemInCart -= 1
                countTotalAmount()
            }
        }
    }
    
    func countTotalAmount() {
        amount = 0
        if listItemCart.count > 0{
            for item in listItemCart {
                amount += Float(item.prices) * Float(item.quatity)
            }
        }
    }
    
}
