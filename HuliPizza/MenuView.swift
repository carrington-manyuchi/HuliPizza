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
                HStack(alignment: .top, spacing: 15) {
                    if let image = UIImage(named: "\(item)_sm") {
                        Image(uiImage: image)
                    } else {
                        Image("surfboard_sm")
                    }
                    VStack(alignment: .leading) {
                        Text("Margherita")
                        Text("Description")
                    }
                }
            }
        }
    }
    
}



#Preview {
    MenuView()
}

