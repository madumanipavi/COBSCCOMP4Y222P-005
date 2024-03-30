//
//  TestProductAddtoCart.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-30.
//

import SwiftUI

struct TestProductAddtoCart: View {
    
    @StateObject var testCartViewModel = TestCartViewModel()
    var body: some View {
//        VStack {
//                   TestCartView(viewModel: TestCartViewModel)
//                   Button("Add to Cart") {
//                       let product = Product(name: "Sample Product", price: 9.99)
//                       TestCartViewModel.addToCart(product: product)
//                   }
//                   .padding()
//               }
        
        Text("Home")
    }
}

#Preview {
    
    TestProductAddtoCart()
}
