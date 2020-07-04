//
//  BottomTabBar.swift
//  fruit_store
//
//  Created by tientran on 6/29/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import SwiftUI
import BottomBar_SwiftUI



struct BottomTabBar: View {
    @ObservedObject var bottomBarVM =  BottomTabBarViewModel()
    @Binding var selectedIndex : Int
    
    @EnvironmentObject var cartVM : CartViewModel


    
    func positionNumberCart() -> Int {
        var postionX : Int = 0;
        switch self.selectedIndex {
        case 0:
            postionX = 40
        case 2:
            postionX = -10
        default:
            postionX = 0
        }
        
        return postionX
    }
    var body: some View {
        
        Section{
            Text("\(self.cartVM.numberItemInCart)")
                .bold()
                .padding(.all,5)
                .background(Color.init(red: 255/255, green: 101/255, blue: 55/255))
                .foregroundColor(.white)
                .clipShape(Circle())
                //                .offset(x: 30, y:50)
                .offset(x:  CGFloat(positionNumberCart()), y:50)
            
            BottomBar(selectedIndex: $selectedIndex, items: bottomBarVM.items)
        }
    }
}

//struct BottomTabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomTabBar()
//    }
//}
