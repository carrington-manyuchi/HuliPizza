//
//  ButtonView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/25.
//

import SwiftUI

struct ButtonView: View {
    @Binding var color: Bool
    
    var body: some View {
        Button("Change Color") {
            color.toggle()
        }
        .foregroundStyle(color ? .green : .red)
    }
}

#Preview {
    ButtonView(color: .constant(false))
}
