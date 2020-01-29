//
//  OrderListViewModel.swift
//  HotCoffeeApp
//
//  Created by slawomir  on 29/01/2020.
//  Copyright © 2020 slawomir . All rights reserved.
//

import Foundation
import SwiftUI
import CoreData
import Combine

class OrderListViewModel: ObservableObject {
    
    var orders = [OrderListViewModel]()
    
    init() {
        fetchAllOrders()
        
    }
    
    func fetchAllOrders() {
        self.orders = CoreDataManager.shared.getAllOrders().map(OrderViewModel.init)
        print(self.orders)
    }
}

class OrderViewModel {
    
    var name = ""
    var type = ""
    
    init(order: Order) {
        self.name = order.name!
        self.type = order.type!
    }
}

