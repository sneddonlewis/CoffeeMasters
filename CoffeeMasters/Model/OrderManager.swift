//
//  OrderManager.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import Foundation

class OrderManager: ObservableObject {
    @Published var products: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int) {
        self.products.append( (product, quantity) )
    }
    
    func remove(product: Product) {
        self.products.removeAll(where: { item in
            return item.0.id == product.id
        })
    }
}
