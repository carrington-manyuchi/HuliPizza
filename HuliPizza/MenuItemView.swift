//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg") {
                Image(uiImage: image)
            } else {
                Image("surfboard_lg")
            }
            Text("Margherita")
            Text("Description")
        }
    }
}

#Preview {
    MenuItemView()
}
