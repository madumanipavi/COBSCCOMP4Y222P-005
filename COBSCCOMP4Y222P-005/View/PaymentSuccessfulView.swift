//
//  PaymentSuccessfulView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-04-01.
//

import SwiftUI

struct PaymentSuccessfulView: View {
    var body: some View {
        VStack{
            Spacer()
            
            Image("successful")
                .resizable()
               .padding(.top, 80.0)
                .frame(width: 110, height:185)
            
            Spacer()
            HStack{
              
                Text("Payment Successful")
                    .font(.title)
                    .bold()
                // .padding(.trailing, 200.0)
            }
           .padding(.top, 30.0)
            Spacer()
            
            
            
            VStack{
              
                
                
                Spacer()
              //  Divider()
                    .padding(.bottom)
                 //   .background(Color.gray)
                HStack{
                    
                    Text("Order No")
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding(.leading, 40.0)
                    
                    Spacer()
                    
//                            Text("Rs.\(String(format: "%.2f", totalPrice))")
//                                .fontWeight(.medium)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 50.0)
                    
                    Text("6453728291")
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding(.trailing, 50.0)
                    
                    
                }
                .padding(.bottom, 3.0)
                
             //   Spacer()
                Divider()
                    .padding(.bottom)
                  //  .frame(width: 10.0, height: 10.0)
                 // .background(Color.gray)
                HStack{
                    
                    Text("Date")
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding(.leading, 40.0)
                    
                    Spacer()
                    
//                            Text("Rs.\(String(format: "%.2f", totalPrice))")
//                                .fontWeight(.medium)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 50.0)
                    
                    Text("22 April 2023,Monday")
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding(.trailing, 50.0)
                    
                    
                }
                .padding(.bottom, 3.0)
                
                
                Spacer()
                Divider()
                    .padding(.bottom)
                 //   .background(Color.gray)
                HStack{
                    
                    Text("Total Price")
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding(.leading, 40.0)
                    
                    Spacer()
                    
//                            Text("Rs.\(String(format: "%.2f", totalPrice))")
//                                .fontWeight(.medium)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 50.0)
                    
                    Text("Rs.5100.00")
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding(.trailing, 50.0)
                    
                    
                }
                .padding(.bottom, 3.0)
            }
            .padding(.top, 150.0)
            .frame(width:400, height: 70)
            VStack{
         
              
              
                Spacer()
                
      
                
                
                HStack {
                    Spacer()
                   // .frame(width: 150)
                    ZStack{
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:150 , height:55
                            )
                            .foregroundColor(.gray.opacity(0.3))
                        //.border(Color.black)
                            .cornerRadius(5)
                        Button(action: {
                            // Place order
                        }) {
                            
                            Text("Cancel")
                                .padding()
                                .foregroundColor(.black)
                                .background(Color.gray.opacity(0.0))
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
                            Text("Ok")
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
                .padding(.bottom, 100.0)
            


            }
            .padding(.top, 40.0)
        }
        MenuBar()
    }
}

#Preview {
    PaymentSuccessfulView()
}
