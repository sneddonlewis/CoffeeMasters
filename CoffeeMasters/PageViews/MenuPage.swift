//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    
                    ForEach(category.products) { product in
                        NavigationLink {
                            DetailPage()
                        } label: {
                            ProductItem(product: product)
                        }
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage()
        .environmentObject(MenuManager())
}
