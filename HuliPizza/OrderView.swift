//
//  OrderView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]
    
    var body: some View {
        VStack {
            
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
            .background(.gray.opacity(0.5))
            
            ScrollView {
                ForEach(orders, id: \.self) { order in
                    OrderRowView(order: order)
                        .padding(10)
                        .background(.regularMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                }
            }
        }
        .background(Color("Surf"))
    }
}


#Preview {
    OrderView(orders:  [1,2,3,4,6])
}
