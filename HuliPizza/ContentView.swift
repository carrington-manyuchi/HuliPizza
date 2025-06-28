//
//  ContentView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            OrderView()
            MenuItemView()
            MenuView()
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


