//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import SwiftUI

struct OrderItem: View {
    @EnvironmentObject var orderManager: OrderManager
    
    var item: (Product, Int)
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$\(Double(item.1) * item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundColor(.secondary)
                .onTapGesture {
                    orderManager.remove(product: item.0)
                }
        }
        .padding()
    }
}

#Preview {
    OrderItem(item: (Product(id: 1, name: "product", description: "description", price: 1.0, image: ""), 1))
}
