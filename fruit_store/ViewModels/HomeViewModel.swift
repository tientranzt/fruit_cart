//
//  HomeViewModel.swift
//  fruit_store
//
//  Created by tientran on 6/29/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import Foundation


class HomeViewModel: ObservableObject {
    @Published var fruits : [Fruit]
    init() {
        self.fruits = Fruit.all()
    }
}
