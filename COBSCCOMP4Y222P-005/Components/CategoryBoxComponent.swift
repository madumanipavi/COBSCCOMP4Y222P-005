//
//  CategoryBoxComponent.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC15 on 2024-03-31.
//

import SwiftUI

struct CategoryBoxComponent: View {
    var body: some View {
        CategoriesSection2()
    }
}

struct CategoriesSection2 : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                //Spacer()
                
                
                Spacer()
            }
                
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10) {
                    CategoryBox2(imageName: "woman", categoryName: "Women", destination: AnyView(OfferPage()))
                    
                    CategoryBox2(imageName: "men", categoryName: "Men", destination: AnyView(OfferPage()))
                    
                    CategoryBox2(imageName: "kids", categoryName: "Kids", destination: AnyView(OfferPage()))
                    
                    CategoryBox2(imageName: "Woman", categoryName: "Other", destination: AnyView(OfferPage()))

                }
                .padding()
            }
            
            
            
        }
        .frame(width: 350, height : 100)
        .padding()
      // .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}


struct CategoryBox2 : View {
    var imageName: String
    var categoryName: String
    var destination: AnyView
    
    
    var body: some View {
        NavigationLink(destination: destination){
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 70)
                
                Text(categoryName)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
            }
            .padding()
            .frame(width: 100,height:120)
           .background(Color(hue: 0.574, saturation: 0.076, brightness: 0.93))
                       .cornerRadius(10)
                      // .shadow(radius: 5)
        }
    }
}

#Preview {
    CategoryBoxComponent()
}
