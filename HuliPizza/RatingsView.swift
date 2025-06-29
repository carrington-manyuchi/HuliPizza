//
//  RatingView.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/28.
//

import SwiftUI

struct RatingsView: View {
    
    var rating : Int
    
    var body: some View {        
        HStack {
            ForEach(1...6, id: \.self) { circle in
                Image(systemName: (circle <= rating) ?  "fork.knife.circle.fill" : "fork.knife.circle")
            }
        }
    }
}

#Preview {
    RatingsView(rating: 5)
}
