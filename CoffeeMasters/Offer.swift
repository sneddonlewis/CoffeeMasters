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
        VStack {
            Text(title)
            Text(description)
        }
    }
}

#Preview {
    Offer(title: "My Offer", description: "This is a description")
}
