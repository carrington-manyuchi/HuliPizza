//
//  ContentView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/25.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1,2,3,4,6]
    @State private var showOrders: Bool = false
    
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            
            Button {
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
                    .font(.title2)
            }
            

            if showOrders {
                OrderView(orders: orders)
            } else {
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


