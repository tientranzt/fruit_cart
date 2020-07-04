//
//  BottomTabBarViewModel.swift
//  fruit_store
//
//  Created by tientran on 6/29/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import Foundation
import BottomBar_SwiftUI

class BottomTabBarViewModel: ObservableObject {
    
    @Published var items: [BottomBarItem] = [
        BottomBarItem(icon: "house", title: "Home", color: .init(red: 12/255, green: 133/255, blue: 128/255)),
        BottomBarItem(icon: "cart", title: "Cart", color: .init(red: 12/255, green: 133/255, blue: 128/255)),
        BottomBarItem(icon: "person", title: "Account", color: .init(red: 12/255, green: 133/255, blue: 128/255))
    ]
}
