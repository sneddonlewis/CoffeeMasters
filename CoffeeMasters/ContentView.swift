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
            Text("Home")
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home")
                }
            
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            
            Text("Order")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            
            Text("Info")
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
