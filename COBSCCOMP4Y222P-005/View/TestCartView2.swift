//
//  TestCartView2.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-04-07.
//

import SwiftUI
import URLImage

struct TestCartView2: View {
    
    @ObservedObject var cartViewModel: CartViewModel
    
    init(cartViewModel: CartViewModel) {
            self.cartViewModel = cartViewModel
        }
    
    var body: some View {
        NavigationView {
            VStack{
                HStack {
          
                    NavigationLink(destination: HomeNewview(cartViewModel: cartViewModel)) {
                        Image(systemName: "arrow.backward")
                            .padding(.leading, 30.0)
                            .font(.title)
                          .foregroundColor(.black)
                    }
                    .foregroundColor(.black)
                    
                   Spacer()
                    
                    Text("My Cart")
                        .font(.title)
                        .bold()
                        .padding(.trailing, 200.0)
                        //.padding(.leading, 20.0)
        
                }
                .padding(.top)
                
//                List {
//                    ForEach(cartViewModel.cartItems) { item in
//                       
//                        HStack{
//                            
//                            VStack{
//                                Text(item.productName)
//                                
//                                
//                                
//                                
//                                Text("Rs.\(String(format: "%.2f", item.total ?? 0))")
//                                    .font(.title2)
//                                    .foregroundColor(.black)
//                                    .padding(.horizontal, 5.0)
//                            }
//                            Spacer()
//                            
//                            Text("\(String( item.quantity ?? 0))")
//                                .font(.title2)
//                                .foregroundColor(.black)
//                                .padding(.horizontal, 5.0)
//                            
//                            
//                            
//                            
//                        }
//  
//                        
//                    }
//                }
                
                
                List {
                    ForEach(cartViewModel.cartItems.indices, id: \.self) { index in
                        HStack {
                            VStack {
                                Text(cartViewModel.cartItems[index].productName)
                                Text("Rs.\(String(format: "%.2f", cartViewModel.cartItems[index].total))")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 5.0)
                            }
                            Spacer()
                            Text("\(cartViewModel.cartItems[index].quantity)")
                                .font(.title2)
                                .foregroundColor(.black)
                                .padding(.horizontal, 5.0)
                            
                            Button(action: {
                                // Remove the item from the cart
                                cartViewModel.cartItems.remove(at: index)
                                // Save the updated cart items
                                cartViewModel.saveCartItems()
                            }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }

                
                let totalPrice = cartViewModel.cartItems.reduce(0.0) { $0 + ($1.total ?? 0.0) }
                //  .navigationBarTitle("Cart")
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
                            
                            Text("Rs.\(String(format: "%.2f", totalPrice))")
                                                        .fontWeight(.medium)
                                                        .foregroundColor(.black)
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
                
                MenuBar(cartViewModel: cartViewModel)
            }
        }
        .navigationBarHidden(true)
        
        
    }
}

struct TestCartView2_Previews: PreviewProvider {
    static var previews: some View {
        TestCartView2(cartViewModel: CartViewModel()) // Provide an instance of CartViewModel
    }
}
