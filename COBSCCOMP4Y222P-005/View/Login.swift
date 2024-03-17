//
//  Login.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-11.
//

import SwiftUI

struct Login: View {
    
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            
            ZStack {
                
                VStack{
                    Image(/*@START_MENU_TOKEN@*/"Image Name"/*@END_MENU_TOKEN@*/)

                
                    Text("User Login")
                        .font(.title)
                        .bold()
                        .padding([.bottom, .trailing], 20.0)
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width : 300 , height : 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Password", text : $password)
                        .padding(.all, 20.0)
                        .frame(width : 300 , height : 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    
                    
                    Button("Login") {
                                            
                    }
                    .padding(.all, 20.0)
                   .foregroundColor(.white)
                   .frame(width: 300, height: 50)
                   .background(Color.blue)
                   .cornerRadius(10)
                }
                
            }
            
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    Login()
}
