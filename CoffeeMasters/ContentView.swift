//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 11/01/2025.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var orderManager: OrderManager
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home")
                }
            
            OfferPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            
            OrderPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
                .badge(orderManager.products.count)
            
            InfoPage()
                .tabItem {
                    Image(systemName: "info")
                    Text("Info")
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(MenuManager())
        .environmentObject(OrderManager())
}
