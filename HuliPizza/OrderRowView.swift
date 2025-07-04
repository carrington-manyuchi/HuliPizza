//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct OrderRowView: View {
    @Binding var order: OrderItem
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading) {
                Text(order.item.name)
                HStack {
                    Text(order.quantity, format: .number)
                    Text(order.item.price, format: .currency(code: "ZAR"))
                }
            }
            Spacer()
            Text(order.extPrice, format: .currency(code: "ZAR"))
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    OrderRowView(order: .constant(testOrderItem))
        .padding()
}
