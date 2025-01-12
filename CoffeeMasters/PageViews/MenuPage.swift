//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 5) { item in
                    NavigationLink {
                        DetailPage()
                    } label: {
                        ProductItem(product: Product(id: 1,
                                 name: "Dummy",
                                 description: "",
                                 price: 0.0,
                                 image: ""))
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage()
}
