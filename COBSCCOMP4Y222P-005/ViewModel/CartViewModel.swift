//
//  CartViewModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-04-07.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published var cartItems: [Products] = []
    
    init() {
        loadCartItems()
    }
    
    func addToCart(product: Products) {
        cartItems.append(product)
        saveCartItems()
    }
    
    private func saveCartItems() {
        do {
            let encodedData = try JSONEncoder().encode(cartItems)
            UserDefaults.standard.set(encodedData, forKey: "cartItems")
        } catch {
            print("Error saving cart items: \(error.localizedDescription)")
        }
    }
    
    private func loadCartItems() {
        if let data = UserDefaults.standard.data(forKey: "cartItems") {
            do {
                cartItems = try JSONDecoder().decode([Products].self, from: data)
            } catch {
                print("Error loading cart items: \(error.localizedDescription)")
            }
        }
    }
}
