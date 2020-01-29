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
        NavigationView {
        List {
            ForEach(self.orderListVM.orders, id: \.name) { order in
                HStack {
                    Image(order.type)
                    .resizable()
                    .frame(width: 100, height: 100)
                    
                    Text(order.name)
                        .font(.largeTitle)
                        .padding([.leading], 10)
                    
                    
                }
            }
        }
            .navigationBarTitle("Orders")
            .navigationBarItems(trailing: Button("Add New Order") {})
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
