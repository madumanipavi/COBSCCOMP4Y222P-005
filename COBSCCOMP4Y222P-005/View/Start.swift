//
//  Start.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-11.
//

import SwiftUI

struct Start: View {
    
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            
            ZStack {
                
                
                Color.blue.ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white.opacity(0.15))
                
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack{
                    
                    Image("StartPage")
                        .resizable()
                        .frame(width: 200 ,height:200)

                
                    Text("All your fashion Items ")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .bold()
                        .padding([.bottom, .trailing], 0.0)
                    
                    
                    Text("in one place")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .bold()
                                         
                    Button("Get Started") {
                                            
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
    }
    
    
        
      
}

#Preview {
    Start()
}
