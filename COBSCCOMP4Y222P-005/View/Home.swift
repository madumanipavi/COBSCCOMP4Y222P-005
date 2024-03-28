//
//  Home.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-13.
//

import SwiftUI

struct Home: View {
    
    @State private var searchText = ""
   // @State private var search: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    VStack(alignment: .leading, spacing: 20){
                        
                        
                        HStack{
                           
                            VStack{
                                
                                Text("Welcome Ann!")
                                    .font(.title)
                                    .padding(.top, 20)
                                    .padding(.horizontal)
                                
                                Text("Welecome Ann Welcome Ann")
                                    .font(.title3)
                                   // .padding(.top, 20)
                                    .padding(.horizontal)
                                
                               // Spacer()
                            }
                        }
                        
                       SearchBar(text: $searchText)
                        .padding()
                        
                       // SearchAndScanView(search: $search)
                        
                        OfferBanner()
                            .padding(.horizontal)
                        
                        CategoriesSection()
                            .padding(.horizontal)
                        
                        PopularProductsSection()
                            .padding(.horizontal)
                        
                        Spacer()
                        
                        
                    }
                }
               // .navigationBarTitle("Home", displayMode: .inline)
                
                MenuBar()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}




struct OfferBanner: View{
    var body: some View {
        VStack{
            HStack{
                /*
                VStack{
                    
                     Text("Offer valid until")
                     .font(.headline)
                     .foregroundColor(Color.white)
                     .padding(.leading, 10.0)
                     
                     
                     Text("25th december 2023")
                     .font(.headline)
                     .foregroundColor(Color.white)
                     .padding(.leading, 10.0)
                     
                     
                     }
                     // Spacer()
                 }
                     */
                
                
                Image("Banner") // Replace "offer_image" with your image name
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                    .frame(width: 470, height: 320)
                                   // .padding()
            }
            /*
            NavigationLink(destination: OfferPage()){
                Text("Learn More")
                    .foregroundColor(.white)
                   // .padding()
                    .padding()
                    .frame(width: 100.0, height: 50.0)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            //.frame(width: 100.0, height: 100.0)
            .padding(.bottom, -30.0)
            
             */
            
        }
        .frame(width: 330, height : 150)
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
                    CategoryBox(imageName: "Woman", categoryName: "Men", destination: AnyView(OfferPage()))
                    
                    CategoryBox(imageName: "Woman", categoryName: "Women", destination: AnyView(OfferPage()))
                    
                    CategoryBox(imageName: "Woman", categoryName: "Men", destination: AnyView(OfferPage()))
                    
                    CategoryBox(imageName: "Woman", categoryName: "Men", destination: AnyView(OfferPage()))

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
            HStack{
                //Spacer()
                Text("Popular Products")
                    .font(.headline)
                    .padding(.top, 150.0)
                
                Spacer()
            }
                
            ScrollView(.horizontal, showsIndicators: false){
                
                VStack{
                    HStack(spacing: 10) {
                        PopularProductsBox(imageName: "Top1", categoryName: "Woman",
                                           price: "$19.99", destination: AnyView(OfferPage()))
                        
                        Spacer()
                        
                        PopularProductsBox(imageName: "Top1", categoryName: "Women",
                                           price: "$24.99",destination: AnyView(OfferPage()))
                        
                        
                        
                    }
                    .padding()
                    
                    HStack(spacing: 10) {
                        PopularProductsBox(imageName: "Top1", categoryName: "Men",
                                           price: "$25",destination: AnyView(OfferPage()))
                        
                        Spacer()
                        
                        PopularProductsBox(imageName: "Top1", categoryName: "Women",
                                           price: "$23.56", destination: AnyView(OfferPage()))
                        
                        
                        
                    }
                    .padding()
                }
                
            }
            
            
            
        }
        .frame(width: 350, height : 300)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct PopularProductsBox : View {
    var imageName: String
    var categoryName: String
    var price: String
    var destination: AnyView
    
    
    var body: some View {
        NavigationLink(destination: destination){
            
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
                HStack{
                    VStack{
                        
                        Text(categoryName)
                            .font(.headline)
                            .foregroundColor(.primary)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 5)
                        
                        HStack{
                            Text(price)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .padding(.leading, 5)
                            
                            //  Spacer()
                            
                            Button(action: {
                                
                            }){
                                /*
                                 Text("Add to Cart")
                                 .font(.subheadline)
                                 .foregroundColor(.white)
                                 .padding(.horizontal, 10)
                                 .padding(.vertical, 5)
                                 .background(Color.blue)
                                 .cornerRadius(5)
                                 */
                                
                                Image(systemName: "plus")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(Color.blue)
                                    .clipShape(Circle())
                                
                            }
                        }
                    }
                    
                    
                    
                    
                }
                .padding(.horizontal, 0)
                .padding(.vertical, 1)
                .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing))
             
                
                
            }
            .padding()
            .frame(width: 150,height:170)
            .background(Color.white)
                       .cornerRadius(10)
                       .shadow(radius: 5)
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            HStack{
                Image("Search")
                    .padding(.trailing, 8)
                TextField("Search Products", text: $text)
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
            }
            
            
                Button(action: {
                    // Perform search action here
                }) {
                  //  Image(systemName: "magnifyingglass")
                    //    .foregroundColor(.gray)
                      //  .padding(.horizontal, 0)
                }
            }
        
        .padding(.horizontal)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
    }
}
 


#Preview {
    Home()
}
