//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 11/01/2025.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    var menuManager = MenuManager()
    var orderManager = OrderManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(orderManager)
        }
    }
}
