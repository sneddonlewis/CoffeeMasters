//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import Foundation
import Alamofire

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
    
    init() {
        requestItemsFromNetwork()
    }
    
    func requestItemsFromNetwork() {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
                        print(response.value)
                    self.menu = menuFromNetwork
                }
            }
    }
}
