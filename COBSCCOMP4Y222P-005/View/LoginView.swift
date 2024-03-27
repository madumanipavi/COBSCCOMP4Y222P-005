//
//  LoginView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-27.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                Image("Image Name")
            
                Text("User Login")
                    .font(.title)
                    .bold()
                    .padding(.bottom)
               
                VStack{
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55
                            )
                            .foregroundColor(.black.opacity(0.05))
                        // .border(Color.black)
                            .cornerRadius(5)
                        
                        TextField(" Enter Username", text: $viewModel.username)
                            .padding(.trailing, 60.0)
                            .frame(width : 300, height : 55)
                        //  .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 5)
                    
                    
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55)
                            .foregroundColor(.black.opacity(0.05))
                        // .border(Color.black)
                            .cornerRadius(5)
                        
                        SecureField("Enter Password", text: $viewModel.password)
                            .padding(.trailing, 60.0)
                        //  .background(Color.black.opacity(0.05))
                            .frame(width : 300 , height : 55)
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 30.0)
                }
                
                    
                    
                    
                
                
                
                VStack{
                    
                    Button("Login"){
                        
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width : 350, height : 55)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .padding(.bottom)
                
                
                
                HStack{
                    Text("Don't have an account")
                        .font(.body)
                    
                    Button("SignUp"){
                        
                    }
                    
                }
                    
                
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginView()
}
