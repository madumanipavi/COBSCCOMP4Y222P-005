//
//  ProductModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-04-07.
//

import Foundation

struct Products: Codable, Identifiable {
    let id: String
    let productName: String
    let selectedSize: String
    let selectedColor: String
    let price: Double
    let image: String
    var quantity: Int
    var total: Double
}

