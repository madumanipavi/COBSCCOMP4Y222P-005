//
//  Home.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-13.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 20){
                
                HStack{
                    Text("Welcome Ann!")
                        .font(.title)
                        .padding(.top, 20)
                        .padding(.horizontal)
                    
                  Spacer()
                }
                
                OfferBanner()
                    .padding(.horizontal)
                
                CategoriesSection()
                    .padding(.horizontal)
                
                PopularProductsSection()
                   .padding(.horizontal)
                
                Spacer()
                
                
            }
        }
        .navigationBarTitle("Home", displayMode: .inline)
    }
}

struct OfferBanner: View{
    var body: some View {
        VStack{
            HStack{
                Text("Offer valid until 25th december 2023")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                // .background(Color.yellow)
                //.cornerRadius(10)
                Spacer()
            }
            
            NavigationLink(destination: OfferPage()){
                Text("Learn More")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            
        }
        .frame(width: 350, height : 150)
        .background(Color(hue: 0.601, saturation: 0.818, brightness: 0.775))
        .cornerRadius(10)
    }
}

struct CategoriesSection : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                //Spacer()
                Text("Categories")
                    .font(.headline)
                    .padding(.top)
                
                Spacer()
            }
                
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10) {
                    CategoryBox(imageName: "Homepage", categoryName: "Men", destination: AnyView(OfferPage()))
                    
                    CategoryBox(imageName: "Homepage", categoryName: "Women", destination: AnyView(OfferPage()))
                    
                    CategoryBox(imageName: "Homepage", categoryName: "Men", destination: AnyView(OfferPage()))

                }
                .padding()
            }
            
            
            
        }
        .frame(width: 350, height : 150)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}


struct CategoryBox : View {
    var imageName: String
    var categoryName: String
    var destination: AnyView
    
    
    var body: some View {
        NavigationLink(destination: destination){
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                Text(categoryName)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
            }
            .padding()
            .frame(width: 100,height:120)
            .background(Color.white)
                       .cornerRadius(10)
                       .shadow(radius: 5)
        }
    }
}


struct PopularProductsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Most Popular Products")
                .font(.headline)
            
            Text("Product 1")
            Text("Product 2")
            Text("Product 3")
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}
#Preview {
    Home()
}
