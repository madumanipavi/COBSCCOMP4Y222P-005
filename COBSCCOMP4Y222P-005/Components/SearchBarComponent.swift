//
//  SearchBarComponent.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC15 on 2024-03-31.
//

import SwiftUI

struct SearchBarComponent: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SearchBar2 : View {
    
    @Binding var searchtext : String
    
    var body: some View{
        
        ZStack{
            
            RoundedRectangle (cornerRadius: 10)
                .frame(width:350 , height:55)
                .foregroundColor(.black.opacity(0.05))
            // .border(Color.black)
                .cornerRadius(5)
            
            HStack{
                
                TextField(" Search Products", text: $searchtext)
                    .padding(.trailing, 60.0)
                    .frame(width : 300, height : 55)
                //  .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                
                Button(action: {}){
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .padding(.trailing, 3.0)
                        
                }
            }
            
        }
        .padding(.bottom, 5)
        
    }
}

#Preview {
    SearchBarComponent()
}
