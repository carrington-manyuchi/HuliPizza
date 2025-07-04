//
//  OrderView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct OrderView: View {
    @Binding var orders: [OrderItem]
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                
                ScrollView {
                    ForEach($orders) { order in
                        //Text(order.item.name)
                         OrderRowView(order: order)
                            .padding(10)
                            .background(.regularMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                    }
                    .padding(.top, 50)
                }
                .padding(.top, 20)
                
                HStack {
                    Text("Order Pizza")
                        .font(.title)
                    Spacer()
                    Label {
                        Text(19.90, format: .currency(code: "ZAR"))
                    } icon: {
                        Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
                    }
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            
            .padding()
            
            Button("Delete Order") {
                if !orders.isEmpty {
                    orders.removeLast()
                }
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 20)
            .background(.regularMaterial, in: Capsule())
            .padding(7)
        }
        .background(Color("Surf"))
    }
}


#Preview {
    OrderView(orders: .constant(testOrders))
}
