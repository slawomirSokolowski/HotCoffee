//
//  AddOrderView.swift
//  HotCoffeeApp
//
//  Created by slawomir  on 28/01/2020.
//  Copyright © 2020 slawomir . All rights reserved.
//

import SwiftUI

struct AddOrderView: View {
    
    @State var addOrderVM = AddOrderViewModel()
    @Binding var isPresented: Bool
    
    var body: some View {
        
        NavigationView {
        Group {
        VStack {
            
            TextField("Enter name", text: self.$addOrderVM.name)
            
            Picker(selection: self.$addOrderVM.type, label: Text("")) {
                Text("Cappuccino").tag("cap")
                Text("Regular").tag("reg")
                Text("Expresso").tag("ex")
            }.pickerStyle(SegmentedPickerStyle())
            
            Button("Place Order") {
                
                self.addOrderVM.saveOrder()
                //self.isPresented = false
                
            }.padding(8)
                .foregroundColor(Color.white)
                .background(Color.green)
                .cornerRadius(10)
            
            
        }
        }.padding(10)
            .navigationBarTitle("Add Order")
            
        }
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView(isPresented: .constant(false))
        
    }
}
