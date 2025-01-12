//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import Foundation

class MenuManager: ObservableObject {
    @Published var menu: [Category] = [
        Category(name: "Hot Coffee", products: [
            Product(id: 1,
                    name: "Dummy",
                    description: "",
                    price: 0.0,
                    image: "")
        ])
    ]
}
