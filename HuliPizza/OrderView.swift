//
//  OrderView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int] = [1,2,3,4,6]

    var body: some View {
        VStack {
            HeaderView()
            
            Label {
                Text(19.90, format: .currency(code: "ZAR"))
            } icon: {
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            
            ScrollView {
                
                ForEach(orders, id: \.self) { order in
                    HStack(alignment: .firstTextBaseline) {
                        Text("Your Order Item \(order)")
                        Spacer()
                        Text(19.90, format: .currency(code: "ZAR"))
                    }
                }
            }
        }
    }
}


#Preview {
    OrderView()
}
