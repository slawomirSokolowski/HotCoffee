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
    @State private var isPresented: Bool = false
    
    init() {
        self.orderListVM = OrderListViewModel()
    }
    
    private func delete(at offsets: IndexSet) {
        offsets.forEach { index in
            let orderVM = self.orderListVM.orders[index]
            self.orderListVM.deleteOrder(orderVM)
        }
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
            }.onDelete(perform: delete)
        }
        .sheet(isPresented: $isPresented, onDismiss:  {
            self.orderListVM.fetchAllOrders()
            
        }, content: {
            AddOrderView(isPresented: self.$isPresented)
            
        })
            .navigationBarTitle("Orders")
            .navigationBarItems(trailing: Button("Add New Order") {
                self.isPresented = true
            })
            
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
