//
//  ContentView.swift
//  HotCoffeeApp
//
//  Created by slawomir  on 28/01/2020.
//  Copyright © 2020 slawomir . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var orderListVM = OrderListViewModel()
    
    init() {
        self.orderListVM = OrderListViewModel()
    }
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
