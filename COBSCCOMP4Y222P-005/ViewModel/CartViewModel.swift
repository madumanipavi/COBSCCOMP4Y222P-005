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
    
//    func addToCart(product: Products) {
////        cartItems.append(product)
////        saveCartItems()
//        
//        if let existingProductIndex = cartItems.firstIndex(where: { $0.id == product.id }) {
//                // Update quantity and total price of the existing product
//                cartItems[existingProductIndex].quantity += product.quantity
//                cartItems[existingProductIndex].total += product.total
//            } else {
//                // Append the product to the cart
//                cartItems.append(product)
//            }
//            saveCartItems() // Save the cart items
//    }
    
    func addToCart(product: Products, selectedSize: String?, selectedColor: String?, quantity: Int?, total: Double?) {
        // Check if the product already exists in the cart
        if let existingProductIndex = cartItems.firstIndex(where: { $0.id == product.id }) {
            // Update quantity and total price of the existing product
            if let quantity = quantity, let total = total {
                cartItems[existingProductIndex].quantity += quantity
                cartItems[existingProductIndex].total += total
            }
        } else {
            // Append the product to the cart
            cartItems.append(product)
        }
        saveCartItems() // Save the cart items
    }

    
    func removeItem(at index: Int) {
            cartItems.remove(at: index)
            saveCartItems() // Save the cart items after removing an item
        }
    
    internal func saveCartItems() {
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
