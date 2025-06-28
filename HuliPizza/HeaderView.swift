//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Huli Pizza Company")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(5)
                .background()
        }
    }
}


#Preview {
    HeaderView()
}
