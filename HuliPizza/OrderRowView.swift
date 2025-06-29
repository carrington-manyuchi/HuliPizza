//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading) {
                Text("Your Order Item \(order)")
                HStack {
                    Text(1, format: .number)
                    Text(19.90, format: .currency(code: "ZAR"))
                }
                
            }
            Spacer()
            Text(19.90, format: .currency(code: "ZAR"))
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    OrderRowView(order: 1)
        .padding()
}
