//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 11/01/2025.
//

import SwiftUI

struct OfferPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "Early Coffee", description: "10% off. Offer valid 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
            }
        }.navigationTitle("Offers")
    }
}

#Preview {
    OfferPage()
}
