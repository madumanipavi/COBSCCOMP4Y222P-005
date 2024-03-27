//
//  StartView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-27.
//

import SwiftUI

struct StartView: View {
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                
                
                Text("Threads and trends")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .bold()
                    .padding([.top,], 200.0)
                
                
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
    StartView()
}
