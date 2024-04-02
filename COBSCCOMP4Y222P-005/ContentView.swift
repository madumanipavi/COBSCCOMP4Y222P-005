//
//  ContentView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-11.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.sizeCategory) var sizeCategory
    @State private var isShowingAnotherView = false
    
    var body: some View {
      //  NavigationView{
        ZStack{
            //geometry reader
            GeometryReader { geometry in
              //  HStack{
                    VStack{
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geometry.size.width * 0.3)
                            .padding(.top, 45.0)
                        Text("Threads and trends")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .bold()
                            .environment(\.sizeCategory, sizeCategory)
                            .padding([.top,], 0.0)
                        Text("Discover All your fashion items in one place")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .bold()
                            .environment(\.sizeCategory, sizeCategory)
                            .padding(.top, 1)
                        //.padding(.bottom, 200.0)
                        Text("In our fashion store")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .bold()
                            .padding(.bottom, 50.0)
                            .environment(\.sizeCategory, sizeCategory)
                        Image("StartPage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geometry.size.width * 0.4)
                            .padding(.bottom, 40.0)
                        // Spacer()
                        Button("Get Started"){
                            self.isShowingAnotherView = true
                        }
                        .padding(20.0)
                        .foregroundColor(.white)
                        .frame(width: geometry.size.width * 0.9, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                    .padding()
                    
              //  }
//                .padding(.horizontal, 5.0)
//                .sheet(isPresented: self.$isShowingAnotherView) {
//                    HomeNewview()
//                }
                //
                
                    .opacity(isShowingAnotherView ? 0 : 1) // Hide the content when AnotherView is presented
                      .disabled(isShowingAnotherView) // Disable interaction with the content when AnotherView is presented
                               
                     if isShowingAnotherView {
                        HomeNewview()
                        .transition(.opacity) // Apply fade-in transition
                    }
               }
          }
            
            
      //  }
      //  .navigationBarHidden(true)
    }
}

#Preview {
    ContentView()
}
