//
//  TestCartViewModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-30.
//

import Foundation


class TestCartViewModel: ObservableObject {
    @Published var cartItems: [Product] = []

    func addToCart(product: Product) {
        cartItems.append(product)
    }

    func removeFromCart(product: Product) {
        if let index = cartItems.firstIndex(where: { $0.id == product.id }) {
            cartItems.remove(at: index)
        }
    }
}
