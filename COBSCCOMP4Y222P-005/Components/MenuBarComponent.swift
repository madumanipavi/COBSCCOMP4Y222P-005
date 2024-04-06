//
//  MenuBarComponent.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-28.
//

import SwiftUI

struct MenuBarComponent: View {
    var body: some View {
      //  NavigationView {
            MenuBar()
      //          .navigationBarHidden(true)
               // .navigationBarTitle(Text("Menu"))
     //   }
    }
}


struct MenuBar: View {
    var body: some View {
        HStack {
            Spacer()
            
            NavigationLink(destination: HomeNewview()) {
                MenuButton(imageName: "house.fill", text: "Home" )
            }
            

            Spacer()
            
            NavigationLink(destination: HomeNewview()) {
                MenuButton(imageName: "heart.fill", text: "Favorites")
            }
            
            Spacer()
            
            NavigationLink(destination: CartView()) {
                MenuButton(imageName: "cart.fill", text: "Cart")
            }
            
            Spacer()
            
            NavigationLink(destination: HomeNewview()) {
                MenuButton(imageName: "person.fill", text: "Profile")
            }
            
            Spacer()
        }
        .padding(.vertical, 10)
        .background(Color.white)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}


struct MenuButton: View {
    var imageName: String
    var text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .foregroundColor(.black)
            
            Text(text)
                .font(.caption)
                .foregroundColor(.primary)
        }
    }
}





#Preview {
    MenuBarComponent()
}
