//
//  CartView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-30.
//

import SwiftUI


struct CartItem: Identifiable {
    let id = UUID()
    let productName: String
    let productPrice: String
    var quantity: Int
    var isSelected: Bool
    var productImage: String
}



struct CartView: View {
    
    
    @State private var cartItems: [CartItem] = [
        CartItem(productName: "Woman dress",productPrice: "Rs.160.00", quantity: 1, isSelected: false, productImage: "Top1"),
           CartItem(productName: "Casual dress",productPrice: "Rs.250.00", quantity: 2, isSelected: false, productImage: "Top1"),
           CartItem(productName: "floral dress",productPrice: "Rs.110.00", quantity: 3, isSelected: false, productImage: "Top1")
       ]
    
    @State public var  deliveryPrice: String = "69.613"
       
       var totalPrice: Double {
           return cartItems.reduce(0) { $0 + Double($1.quantity) * 10 } // Assuming each product costs $10
       }
       
    
    
    var body: some View {
        NavigationView{
            VStack {
//                Text("My Cart")
//                    .font(.title)
//                    .padding(.top, 20)
//                    .padding(.trailing, 100.0)
                
                HStack {
                    //Image(systemName: "arrow.backward")
                    Button(action: {}) {
                        Image(systemName: "arrow.backward")
                            .padding(.leading, 30.0)
                           // .padding(.trailing, 30.0)
                            //.padding(.trailing, 20.0)
                            .font(.title)
                            .foregroundColor(.black)
                    }
                   Spacer()
                    
                    Text("My Cart")
                        .font(.title)
                        .bold()
                        .padding(.trailing, 200.0)
                        //.padding(.leading, 20.0)
                    
                    
                    
                    
                   
                    
                    
                }
                .padding(.top)
                
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
                                        /////
                                        ///
                                        ///
                                        VStack{
                                            Text(item.productName)
                                                .padding(.trailing, 50.0)
                                                
                                            Text(item.productPrice)
                                                .font(.footnote)
                                                .padding(.trailing, 90.0)
                                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        }
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
                                    ///////
                                }
                            }
                        Spacer()
                VStack{
                    
                    
                    
                   // Text("Delivery Charges: $\(deliveryPrice)")
                    VStack{
                        HStack{
                            
                            Text("Delivery Charges")
                                .font(.subheadline)
                                .padding(.leading, 40.0)
                            
                            Spacer()
                            
                            Text("Rs.619.00")
                            // .padding()
                                .padding(.trailing, 50.0)
//                            Text("\(deliveryPrice)")
//                            // .padding()
//                                .padding(.trailing, 50.0)
                            
//                            Text("Rs.\(String(format: "%.2f", deliveryPrice))")
//                                .font(.subheadline)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 50.0)
                            
                            
                        }
                        .padding(.top, 10.0)
                        
                        
                        Spacer()
                        
                        HStack{
                            
                            Text("Total Price")
                                .font(.title3)
                                .fontWeight(.medium)
                                .padding(.leading, 40.0)
                            
                            Spacer()
                            
//                            Text("Rs.\(String(format: "%.2f", totalPrice))")
//                                .fontWeight(.medium)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 50.0)
                            
                            Text("Rs.5100.00")
                                .padding(.trailing, 50.0)
                            
                            
                        }
                        .padding(.bottom, 3.0)
                    }
                    .frame(width:400, height: 70)
                    
                    HStack {
                        Spacer()
                       
                       // .frame(width: 150)
                        
                        
                        ZStack{
                            
                            RoundedRectangle (cornerRadius: 10)
                                .frame(width:150 , height:55
                                )
                                .foregroundColor(.red)
                            // .border(Color.black)
                                .cornerRadius(5)
                            
                            Button(action: {
                                // Place order
                            }) {
                                
                                Text("Delete")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.red)
                                    .cornerRadius(10)
                                    .frame(width: 150, height: 45)
                            }
                            
                        }
                        .padding(.bottom, 5)
                        
                      
                        
                       // Spacer()
                        
                        
                        ZStack{
                            
                            RoundedRectangle (cornerRadius: 10)
                                .frame(width:150 , height:55
                                )
                                .foregroundColor(.blue)
                            // .border(Color.black)
                                .cornerRadius(5)
                            
                            Button(action: {
                                // Cancel order
                            }) {
                                Text("Check Out")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .frame(width: 170)
                            }
                            
                        }
                        .padding(.bottom, 5)
                        
                        
                        
                     //   .frame(width: 150)
                        
                        Spacer()
                    }
                    .padding()
                }
                    }
                  //  .navigationTitle()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    CartView()
}
