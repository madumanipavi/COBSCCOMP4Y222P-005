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
            VStack{
                HStack{
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55)
                            .foregroundColor(.black.opacity(0.05))
                        //.border(Color.black)
                            .cornerRadius(5)
                        HStack{
                            
                            Image("creditcard")

                            Text("Enter Password")
                                .padding(.trailing, 60.0)
                            //  .background(Color.black.opacity(0.05))
                                .frame(width : 300 , height : 55)
                                .cornerRadius(10)
                        }
                        
                    }
                    .padding(.bottom, 30.0)
                    
                }
                
                HStack{
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55)
                            .foregroundColor(.black.opacity(0.05))
                        //.border(Color.black)
                            .cornerRadius(5)
                        HStack{
                            Image(systemName: "globe")
                            
                            Text("Enter Password")
                                .padding(.trailing, 60.0)
                            //  .background(Color.black.opacity(0.05))
                                .frame(width : 300 , height : 55)
                                .cornerRadius(10)
                        }
                        
                    }
                    .padding(.bottom, 30.0)
                    
                }
                
                HStack{
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55)
                            .foregroundColor(.black.opacity(0.05))
                        //.border(Color.black)
                            .cornerRadius(5)
                        HStack{
                            
                            Image(systemName: "creditcard")

                            Text("Enter Password")
                                .padding(.trailing, 60.0)
                            //  .background(Color.black.opacity(0.05))
                                .frame(width : 300 , height : 55)
                                .cornerRadius(10)
                        }
                        
                    }
                    .padding(.bottom, 30.0)
                    
                }


            }
        }
    }
}

#Preview {
    PaymentView()
}
