//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct MenuItemView: View {
    @Binding var item: MenuItem
    @State private var addedItem: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                    
                if let image = UIImage(named: "\(item.id)_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding(.vertical, 5)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            
            .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1) ], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .teal, radius: 5, x: 8, y: 8)

            VStack(alignment: .leading) {
                
                ScrollView {
                    Text(item.description)
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            Button {
                addedItem.toggle()
            } label: {
                HStack {
                    Text(12.99, format: .currency(code: "ZAR")).bold()
                    Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()


        }
    }
}

#Preview {
    MenuItemView(item: .constant(testMenuItem))
}
