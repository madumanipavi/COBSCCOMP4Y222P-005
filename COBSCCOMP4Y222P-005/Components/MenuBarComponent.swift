//
//  MenuBarComponent.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-28.
//

import SwiftUI

struct MenuBarComponent: View {
    var body: some View {
        MenuBar()
    }
}


struct MenuBar: View {
    var body: some View {
        HStack {
            Spacer()
            
            MenuButton(imageName: "house.fill", text: "Home")
            
            Spacer()
            
            MenuButton(imageName: "heart.fill", text: "Favorites")
            
            Spacer()
            
            MenuButton(imageName: "cart.fill", text: "Cart")
            
            Spacer()
            
            MenuButton(imageName: "person.fill", text: "Profile")
            
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
            
            Text(text)
                .font(.caption)
                .foregroundColor(.primary)
        }
    }
}



#Preview {
    MenuBarComponent()
}
