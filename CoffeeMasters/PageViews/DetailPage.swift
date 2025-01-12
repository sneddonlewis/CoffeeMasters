//
//  DetailPage.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import SwiftUI

struct DetailPage: View {
    @State var quantity = 0
    
    var product: Product
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("\(product.price, specifier: "%.2f")")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal \(Double(quantity) * product.price, specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                //TODO
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alt2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
    }
}

#Preview {
    DetailPage(product: Product(id: 1, name: "Product", description: "description", price: 4.50, image: ""))
}
