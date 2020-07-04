//
//  CartView.swift
//  fruit_store
//
//  Created by tientran on 6/30/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import SwiftUI

struct ItemInCart: View {
    var fruit : Fruit
    var size : CGFloat
    @EnvironmentObject var cartVM : CartViewModel
    
    var body: some View{
        
        HStack{
            Image("\(self.fruit.image)")
                .resizable()
                .frame(width: 80, height: 80)
                .padding(.all, 5)
                .overlay(Circle().stroke(Color.init(red: 232/255, green: 232/255, blue: 234/255), lineWidth: 1))
            HStack{
                Button(action:{
                    self.cartVM.updateQuantity(fruit: self.fruit, isPlus: false)
                }){
                    Text("-")
                }
                .foregroundColor(Color.init(red: 12/255, green: 133/255, blue: 128/255))
                .frame(width :20, height: 20)
                
                Text("\(self.fruit.quatity)")
                
                
                Button(action:{
                    self.cartVM.updateQuantity(fruit: self.fruit, isPlus: true)
                }){
                    Text("+")
                }
                .foregroundColor(Color.init(red: 12/255, green: 133/255, blue: 128/255))
                .frame(width :20, height: 20)
                
            }
            .background(Color.init(red: 235/255, green: 254/255, blue: 254/255))
            .offset(x:-85, y :45)
            
            VStack(alignment:.leading){
                Text("$" + String(format: "%.2f", self.fruit.prices))
                    .font(.custom("", size: 25))
                    .bold()
                Text("\(self.fruit.name) | \(self.fruit.weight)")
                    .foregroundColor(.gray)
            }
            .offset(x:-60)
            Spacer()
        }
        .padding()
        .frame(width: size)
        
    }
}
struct CartView: View {
    
    @EnvironmentObject var cartVM : CartViewModel
    var body: some View {
        GeometryReader { geometry in
            VStack{
                ScrollView{
                    
                    VStack{
                        ForEach(self.cartVM.listItemCart){fruit in
                            ItemInCart(fruit: fruit, size: geometry.size.width)
                        }
                    }
                    //  ItemInCart(fruit: Fruit(name: "Apple", prices: "12", weight: "1kg", image: "fruit1", quatity: 1), size: geometry.size.width)
                    
                    
                }
                VStack(alignment:.leading){
                    HStack{
                        Text("Delivery fee")
                        Spacer()
                        Text("$2.50").bold()
                    }.padding()
                    HStack{
                        Text("Subtotal (incl. VAT)").bold()
                        Spacer()
                        Text("$" + String(format: "%.2f", self.cartVM.amount)).foregroundColor(.orange).bold()
                    }.padding()
                }.frame(width: geometry.size.width - 50)
                    
                    
                    .padding(.horizontal,10)
                    .padding(.vertical, 5)
                    .background(Color.init(red: 253/255, green: 239/255, blue: 234/255    ))
                    .cornerRadius(10)
                
                
                VStack{
                    Button(action:{}){
                        Text("Checkout").bold()
                            .font(.custom("", size: 22))
                    }
                    .padding()
                    .frame(width: geometry.size.width - 30)
                    .background(Color.init(red: 9/255, green: 134/255, blue: 129/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.vertical,10)
                    
                }
            }
        }
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
