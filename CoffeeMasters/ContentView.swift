//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 11/01/2025.
//

import SwiftUI

struct ContentView: View {
    
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
}
