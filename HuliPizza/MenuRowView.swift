//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct MenuRowView: View {
    var item: MenuItem
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            if let image = UIImage(named: "\(item.id)_sm") {
                Image(uiImage: image)
                    .clipShape(Circle())
                    .padding(.horizontal, -17)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("\(item.name)")
                    Text(item.price, format: .currency(code: "ZAR"))
                }
                RatingsView(rating: item.rating)
            }
            Spacer()
        }
        .padding(5)
    }
}

#Preview {
    MenuRowView(item: testMenuItem)
}
