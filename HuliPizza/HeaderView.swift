//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct HeaderView: View {
    @ObservedObject var orders: OrderModel


    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                
                Text("Huli Pizza Company")
                    .font(.custom("Georgia", size: 30, relativeTo: .title))
                    .foregroundStyle(.regularMaterial)
                    .fontWeight(.semibold)
            }
            Label {
                Text(orders.orderTotal, format: .currency(code: "ZAR"))
            } icon: {
                Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
            }
        }
        .background(.ultraThinMaterial)
    }
}


#Preview {
    HeaderView(orders: OrderModel())
}
