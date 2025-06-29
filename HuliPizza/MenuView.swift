//
//  MenuView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        ScrollView {
            ForEach(1...15, id: \.self) { item in
                MenuRowView(item: item)
            }
        }
    }
}


#Preview {
    MenuView()
}

