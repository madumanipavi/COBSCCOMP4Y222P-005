//
//  CheckOutView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC15 on 2024-03-31.
//

import SwiftUI

struct CheckOutView: View {
    var body: some View {
        NavigationView{
            
            VStack{
                
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
                  // Spacer()
                    
                    Text("Order OverView")
                    
                    Text("My Cart")
                        .font(.title)
                        .bold()
                        .padding(.trailing, 200.0)
                        //.padding(.leading, 20.0)
                    
                    
                    
                    
                   
                    
                    
                }
                
                
                
               // Spacer()
                Button("Place Order"){
                    
                }
                .padding(20.0)
                .foregroundColor(.white)
                .frame(width:350, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                
               
            }
            
            
            
        }.navigationBarHidden(true)
    }
}

#Preview {
    CheckOutView()
}
