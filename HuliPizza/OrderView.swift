//
//  OrderView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var orders: OrderModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                
                ScrollView {
                    ForEach($orders.orderItems) { order in
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
                    
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            .padding()
            
            Button("Delete Order") {
                if !orders.orderItems.isEmpty {
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
    OrderView(orders: OrderModel())
}
