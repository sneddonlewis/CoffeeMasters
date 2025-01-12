//
//  Category.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
