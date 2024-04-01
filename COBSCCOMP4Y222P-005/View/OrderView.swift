//
//  OrderView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-04-01.
//

import SwiftUI




struct OrderView: View {
    
    @State private var cartItems: [CartItem] = [
        CartItem(productName: "Woman dress",productPrice: "Rs.160.00", quantity: 1, isSelected: false, productImage: "Top1"),
           CartItem(productName: "Casual dress",productPrice: "Rs.250.00", quantity: 2, isSelected: false, productImage: "Top1"),
          
       ]
    
    @State public var  deliveryPrice: String = "69.613"
       
       var totalPrice: Double {
           return cartItems.reduce(0) { $0 + Double($1.quantity) * 10 } // Assuming each product costs $10
       }
       

    
    var body: some View {
        VStack{
            HStack{
                Button(action: {}) {
                    Image(systemName: "arrow.backward")
                    // .padding(.leading, 30.0)
                    // .padding(.trailing, 30.0)
                    //.padding(.trailing, 20.0)
                        .font(.title)
                        .foregroundColor(.black)
                }
                Text("Select Payment Method")
                    .font(.title)
                    .bold()
                // .padding(.trailing, 200.0)
            }
            .padding(.top, 20.0)
            Spacer()
            VStack{
           
                
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
                
                
                Text("Delivery Address")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.trailing, 170.0)
                
                VStack{
                    ZStack{
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:95
                            )
                            .foregroundColor(.blue.opacity(0.9))
                        // .border(Color.black)
                            .cornerRadius(5)
                        
                        VStack{
                            HStack{
                                Text("Dinesh Rathnayaka ")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding(.leading, 30.0)
                                    
                                Spacer()
                                
                                Text("0769946667")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding(.trailing, 40.0)
                            }
                            .padding(.leading, 10.0)
                            
                            Text("No: 25 , Kuduwamulla Road ,Katubedda")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.trailing, 40.0)
                            
                            Text("Moratuwa")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.trailing, 240.0)
                        }
                        //                    Button(action: {
                        //                        // Cancel order
                        //                    }) {
                        //                        Text("Check Out")
                        //                            .padding()
                        //                            .foregroundColor(.white)
                        //                            .background(Color.blue)
                        //                            .cornerRadius(10)
                        //                            .frame(width: 270)
                        //                    }
                        
                        
                        
                       
                    }
                    .padding(.bottom, 30)
                }
                
                
                
               
                Spacer()
                
                VStack{
                    HStack{
                        
                        Text("Order Summary")
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(.leading, 40.0)
                        
                        Spacer()
                        
//                            Text("Rs.\(String(format: "%.2f", totalPrice))")
//                                .fontWeight(.medium)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 50.0)
                        
                      
                        
                        
                    }
                    Spacer()
                    HStack{
                        
                        Text("Item Total")
                            .font(.subheadline)
                           
                            .padding(.leading, 40.0)
                        
                        Spacer()
                        
//                            Text("Rs.\(String(format: "%.2f", totalPrice))")
//                                .fontWeight(.medium)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 50.0)
                        
                        Text("Rs.693.00")
                            .font(.subheadline)
                            .padding(.trailing, 50.0)
                        
                        
                    }
                   .padding(.bottom, 3.0)
                    
                    HStack{
                        
                        Text("Delivery Charges")
                            .font(.subheadline)
                          
                            .padding(.leading, 40.0)
                        
                        Spacer()
                        
//                            Text("Rs.\(String(format: "%.2f", totalPrice))")
//                                .fontWeight(.medium)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 50.0)
                        
                        Text("Rs.69.00")
                            .font(.subheadline)
                            .padding(.trailing, 50.0)
                        
                        
                    }
                //   .padding(.bottom, 3.0)
                    
                    Spacer()
                    Divider()
                        .padding(.bottom)
                     //   .background(Color.gray)
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
                .frame(width:400, height: 100)
                
                
                HStack {
                    
                    
                    Spacer()
                   // .frame(width: 150)
                 
                   // Spacer()
                    ZStack{
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55
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
                                .frame(width: 270)
                        }
                    }
                    .padding(.bottom, 5)
                 //   .frame(width: 150)
                    Spacer()
                }
                .padding()
            


            }
            .padding(.top, 40.0)
        }
        
        MenuBar()
    }
}

#Preview {
    OrderView()
}
