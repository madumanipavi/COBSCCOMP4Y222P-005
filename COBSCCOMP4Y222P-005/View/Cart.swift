//
//  Cart.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBMPC04PC03 on 2024-03-21.
//

import SwiftUI


struct CartItem: Identifiable {
    let id = UUID()
    let productName: String
    var quantity: Int
    var isSelected: Bool
    var productImage: String
}

struct Cart: View {
    
    @State private var cartItems: [CartItem] = [
           CartItem(productName: "Product 1", quantity: 1, isSelected: false, productImage: "product1"),
           CartItem(productName: "Product 2", quantity: 2, isSelected: false, productImage: "product1"),
           CartItem(productName: "Product 3", quantity: 3, isSelected: false, productImage: "product1")
       ]
       
       var totalPrice: Double {
           return cartItems.reduce(0) { $0 + Double($1.quantity) * 10 } // Assuming each product costs $10
       }
       
    
    var body: some View {
        VStack {
            
            Text("My Cart")
                .font(.title)
                .padding(.top, 20)
                .padding(.horizontal)
            
            
            List {
                            ForEach(cartItems) { item in
                                HStack {
                                    Button(action: {
                                        // Toggle selection
                                        if let index = cartItems.firstIndex(where: { $0.id == item.id }) {
                                            cartItems[index].isSelected.toggle()
                                        }
                                    }) {
                                        ZStack {
                                            Circle()
                                                .strokeBorder(item.isSelected ? Color.blue : Color.gray, lineWidth: 2)
                                                .frame(width: 20, height: 20)
                                            
                                            if item.isSelected {
                                                Circle()
                                                    .fill(Color.blue)
                                                    .frame(width: 10, height: 10)
                                            }
                                        }
                                    }
                                    Image(item.productImage) // Display product image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50) // Adjust size as needed
                                    Text(item.productName)
                                    Spacer()
                                    Button(action: {
                                        // Decrease quantity
                                        if let index = cartItems.firstIndex(where: { $0.id == item.id }), cartItems[index].quantity > 1 {
                                            cartItems[index].quantity -= 1
                                        }
                                    }) {
                                        Image(systemName: "minus.circle")
                                    }
                                    Text("\(item.quantity)")
                                    Button(action: {
                                        // Increase quantity
                                        if let index = cartItems.firstIndex(where: { $0.id == item.id }) {
                                            cartItems[index].quantity += 1
                                        }
                                    }) {
                                        Image(systemName: "plus.circle")
                                    }
                                }
                            }
                        }
                        
                       
                        
                    
                    Spacer()
            VStack{
        
                
                Text("Total Price: $\(totalPrice)")
                    .padding()
                HStack {
                    
                    
                    
                    Spacer()
                    Button(action: {
                        // Place order
                    }) {
                        
                        Text("Cancel")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(10)
                            .frame(width: 150)
                        
                        
                    }
                   // .frame(width: 150)
                    
                   // Spacer()
                    Button(action: {
                        // Cancel order
                    }) {
                        
                        
                        
                        Text("Place Order")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .frame(width: 170)
                        
                        
                       
                    }
                 //   .frame(width: 150)
                    
                    Spacer()
                }
                .padding()
            }
                }
                .navigationTitle("Cart")
    }
}

#Preview {
    Cart()
}
