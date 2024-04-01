//
//  SignUpView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-27.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject private var viewModel = LoginViewModel()
    
    @State private var confirmPasssword = ""
    @State private var password = ""
    @State private var name = ""
    @State private var email = ""
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                Image("Logo")
                    .resizable()
                    .padding(.vertical, 1.0)
                    .frame(width: 100, height:100)
                    //  .padding(.vertical, 0.0)
                
               
            
                Text("Create an account")
                    .font(.title)
                    .bold()
                    .padding(.top, 1.0)
               
                VStack{
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55
                            )
                            .foregroundColor(.black.opacity(0.05))
                        // .border(Color.black)
                            .cornerRadius(5)
                        
                        TextField(" Enter FirstName", text: $name)
                            .padding(.trailing, 60.0)
                            .frame(width : 300, height : 55)
                        //  .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 5)
                    
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55
                            )
                            .foregroundColor(.black.opacity(0.05))
                        // .border(Color.black)
                            .cornerRadius(5)
                        
                        TextField(" Enter Lastname", text: $name)
                            .padding(.trailing, 60.0)
                            .frame(width : 300, height : 55)
                        //  .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 5)
                    
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55
                            )
                            .foregroundColor(.black.opacity(0.05))
                        // .border(Color.black)
                            .cornerRadius(5)
                        
                        TextField(" Enter email", text: $email)
                            .padding(.trailing, 60.0)
                            .frame(width : 300, height : 55)
                        //  .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 5)
                    
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55
                            )
                            .foregroundColor(.black.opacity(0.05))
                        // .border(Color.black)
                            .cornerRadius(5)
                        
                        TextField(" Enter phone number", text: $email)
                            .padding(.trailing, 60.0)
                            .frame(width : 300, height : 55)
                        //  .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 5)
                    
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55
                            )
                            .foregroundColor(.black.opacity(0.05))
                        // .border(Color.black)
                            .cornerRadius(5)
                        
                        TextField(" Enter Address", text: $email)
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
                        
                        SecureField("Enter Password", text: $password)
                            .padding(.trailing, 60.0)
                        //  .background(Color.black.opacity(0.05))
                            .frame(width : 300 , height : 55)
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 5)
                    
                    
                    ZStack{
                        
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width:350 , height:55)
                            .foregroundColor(.black.opacity(0.05))
                        // .border(Color.black)
                            .cornerRadius(5)
                        
                        SecureField("Confirm Password", text: $confirmPasssword)
                            .padding(.trailing, 60.0)
                        //  .background(Color.black.opacity(0.05))
                            .frame(width : 300 , height : 55)
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 5)
                }
                
                    
                    
                    
                
                
                
                VStack{
                    
                    Button("Signup"){
                        
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width : 350, height : 55)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .padding(.bottom)
                
                
                
               
                    
                
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    SignUpView()
}
