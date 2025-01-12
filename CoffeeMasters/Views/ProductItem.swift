//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import SwiftUI

struct ProductItem: View {
    var product: Product
    
    var body: some View {
        VStack {
            AsyncImage(url: product.imageURL)
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                        .bold()
                    Text("$ \(product.price, specifier: "%.2f")")
                        .font(.caption)
                    
                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding(.trailing)
    }
}

#Preview {
    ProductItem(product: Product(id: 1,
                                 name: "Dummy",
                                 description: "",
                                 price: 0.0,
                                 image: ""))
}
