//
//  Login.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-11.
//

import SwiftUI

struct Login: View {
    
   // @State private var username = ""
   // @State private var password = ""
    
    @StateObject private var viewModel = LoginViewModel()
   // @State private var isLoggedin: Bool? = false
    
    
    var body: some View {
        NavigationView{
            
            ZStack {
                
                VStack{
                    Image(/*@START_MENU_TOKEN@*/"Image Name"/*@END_MENU_TOKEN@*/)

                
                    Text("User Login")
                        .font(.title)
                        .bold()
                        .padding([.bottom, .trailing], 20.0)
                    
                    TextField("Username", text: $viewModel.username)
                        .padding()
                        .frame(width : 300 , height : 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Password", text : $viewModel.password)
                        .padding(.all, 20.0)
                        .frame(width : 300 , height : 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                        .padding(.bottom, 20.0)
                    
                    
                    Button("Login") {
                                            
                    }
                    .padding(.all, 20.0)
                   .foregroundColor(.white)
                   .frame(width: 300, height: 50)
                   .background(Color.blue)
                   .cornerRadius(10)
                }
                .navigationBarHidden(true)
            }
            
        }
        
    }
    
   // private func login() {
     //   guard viewModel.validate() else {
       //     return
        //}
        //viewModel.signIn { success in if success {
         //   isLoggedin = true
            
        //}}
    //}
}


#Preview {
    Login()
}
