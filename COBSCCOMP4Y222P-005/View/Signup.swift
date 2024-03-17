//
//  Signup.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-11.
//

import SwiftUI

struct Signup: View {
    @State private var confirmpassword = ""
    @State private var password = ""
    @State private var name = ""
    @State private var email = ""
    
    var body: some View {
        NavigationView{
            
            ZStack {
                
                VStack{
                    Image(/*@START_MENU_TOKEN@*/"Image Name"/*@END_MENU_TOKEN@*/)

                
                    Text("Sign Up")
                        .font(.title)
                        .bold()
                        .padding([.bottom, .trailing], 20.0)
                    
                    TextField("Name", text: $name)
                        .padding()
                        .frame(width : 300 , height : 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width : 300 , height : 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                
                    SecureField("Password", text : $password)
                        .padding()
                        .frame(width : 300 , height : 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Confirm Psssword", text : $confirmpassword)
                        .padding()
                        .frame(width : 300 , height : 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    
                    Button("Sign Up") {
                                            
                    }
                    .padding(20.0)
                   .foregroundColor(.white)
                   .frame(width: 300, height: 50)
                   .background(Color.blue)
                   .cornerRadius(10)
                }
                
            }
            
        }
        .navigationBarHidden(true)
    }}

#Preview {
    Signup()
}
