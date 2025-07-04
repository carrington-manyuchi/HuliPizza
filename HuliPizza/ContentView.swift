//
//  ContentView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/25.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]
    @StateObject var orders: OrderModel = OrderModel()
    @State private var showOrders: Bool = false
    @State private var selectedItem: MenuItem = noMenuItem

    var body: some View {
        VStack {
            HeaderView(orders: orders)
                .shadow(radius: 5)
            
            HStack {
                Text("\(orders.orderItems.count) orders")
                Spacer()
                Button {
                    showOrders.toggle()
                } label: {
                    Image(systemName: showOrders ? "cart" : "menucard")
                }
            }
            .font(.title2)            

            if showOrders {
                OrderView(orders: orders)
            } else {
                MenuItemView(item: $selectedItem, orders: orders)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu: menu, selectedItem: $selectedItem)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView(menu:  MenuModel().menu)
}


