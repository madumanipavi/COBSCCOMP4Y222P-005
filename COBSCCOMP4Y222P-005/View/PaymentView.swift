//
//  PaymentView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC15 on 2024-03-31.
//

import SwiftUI

struct PaymentView: View {
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
                HStack{
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:75)
                            .foregroundColor(.black.opacity(0.05))
                        //.border(Color.black)
                            .cornerRadius(5)
                        HStack{
                            
                            
                            Spacer()
                            Image("credit")
                                .resizable()
                                .padding(.leading, 50.0)
                                .frame(width: 85, height:35)
                                
                          
                                
                                Text("Credit/Debit Card")
                                    .padding(.trailing, 80.0)
                                //   .padding(.trailing, 60.0)
                                //  .background(Color.black.opacity(0.05))
                                    .frame(width : 250 , height : 55)
                                    .cornerRadius(10)
                            
//                            Circle()
//                                .foregroundColor(.white)
                            
                            Circle()
                                
                                .strokeBorder(Color.gray, lineWidth: 1)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 50.0)
                            Spacer()
                                
                               
                            
                        }
                        
                    }
                    .padding(.bottom, 30.0)
                    
                }
                
                HStack{
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:75)
                            .foregroundColor(.black.opacity(0.05))
                        //.border(Color.black)
                            .cornerRadius(5)
                        HStack{
                            
                            
                            Spacer()
                            Image("cash")
                                .resizable()
                                .padding(.leading, 50.0)
                                .frame(width: 85, height:35)
                                
                          
                                
                                Text("Cash On Delivery")
                                    .padding(.trailing, 80.0)
                                //   .padding(.trailing, 60.0)
                                //  .background(Color.black.opacity(0.05))
                                    .frame(width : 250 , height : 55)
                                    .cornerRadius(10)
                            
//                            Circle()
//                                .foregroundColor(.white)
                            
                            Circle()
                                
                                .strokeBorder(Color.gray, lineWidth: 1)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 50.0)
                            Spacer()
                                
                               
                            
                        }
                        
                    }
                    .padding(.bottom, 30.0)
                    
                }
                
                HStack{
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:75)
                            .foregroundColor(.black.opacity(0.05))
                        //.border(Color.black)
                            .cornerRadius(5)
                        HStack{
                            
                            
                            Spacer()
                            Image("globe")
                                .resizable()
                                .padding(.leading, 50.0)
                                .frame(width: 85, height:35)
                                
                          
                                
                                Text("Net Banking")
                                    .padding(.trailing, 120.0)
                                //   .padding(.trailing, 60.0)
                                //  .background(Color.black.opacity(0.05))
                                    .frame(width : 250 , height : 55)
                                    .cornerRadius(10)
                            
//                            Circle()
//                                .foregroundColor(.white)
                            
                            Circle()
                                
                                .strokeBorder(Color.gray, lineWidth: 1)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 50.0)
                            Spacer()
                                
                               
                            
                        }
                        
                    }
                    .padding(.bottom, 30.0)
                    
                }
                Spacer()
                
                VStack{
                  
                    
                    
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
                .frame(width:400, height: 70)
                
                
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
    PaymentView()
}
