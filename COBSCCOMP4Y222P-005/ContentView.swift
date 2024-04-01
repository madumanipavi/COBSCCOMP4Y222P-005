//
//  ContentView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                
                Image("Logo")
                    .padding(.top, 0.0)
                
                Text("Threads and trends")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .bold()
                   .padding([.top,], 0.0)
                
                
                Text("Discover All your fashion items in one place")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .bold()
                    .padding(.top, 1)
                   // .padding(.bottom, 200.0)
                
                Text("items in one place")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .bold()
                    .padding(.bottom, 50.0)
                
                Image("StartPage")
                    .resizable()
                    .frame(width: 200,height: 200)
                    .padding(.bottom, 40.0)
                
                
               // Spacer()
                Button("Get Started"){
                    
                }
                .padding(20.0)
                .foregroundColor(.white)
                .frame(width:350, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                
               
            }
            
            
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ContentView()
}
