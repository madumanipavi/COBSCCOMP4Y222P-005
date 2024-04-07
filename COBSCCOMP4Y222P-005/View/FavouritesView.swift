//
//  FavouritesView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-04-07.
//

import SwiftUI

struct FavouritesView: View {
    @ObservedObject var cartViewModel: CartViewModel
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    
                    NavigationLink(destination: HomeNewview(cartViewModel: cartViewModel)) {
                        Image(systemName: "arrow.backward")
                            .padding(.leading, 30.0)
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text("Favourites")
                        .font(.title)
                        .bold()
                        .padding(.trailing, 150.0)
                    //.padding(.leading, 20.0)
                    
                }
                .padding(.bottom, 700.0)
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    FavouritesView(cartViewModel: CartViewModel())
}
