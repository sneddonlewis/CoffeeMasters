//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 11/01/2025.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            
            VStack {
                Text(title)
                    .padding()
                    .font(.headline)
                    .background(.cardBackground)
                Text(description)
                    .padding()
                    .font(.subheadline)
                    .background(.cardBackground)
            }
        }
    }
}

#Preview {
    Offer(title: "My Offer", description: "This is a description")
}
