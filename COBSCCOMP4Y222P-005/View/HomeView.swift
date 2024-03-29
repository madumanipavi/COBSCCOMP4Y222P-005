//
//  HomeView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-28.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchtext: String = ""
    @State private var selectedSubCategory: Int = 0
    
    private let subcategory = ["Tops", "Dresses" , "Jeans" , "Skirts", "Tshirts"]
    
    var body: some View {
        NavigationView{
            
                VStack(){
                   
                        HStack {
                            Text("Threads & Trends")
                                .font(.title)
                                .bold()
                                .padding(.leading, 20.0)
                            
                            
                            
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "slider.horizontal.3")
                                    .padding(.trailing, 20.0)
                                    .font(.title)
                                    .foregroundColor(.black)
                            }
                            
                            
                        }
                        
                        SearchBar2(searchtext: $searchtext)
                    ScrollView{
                        
                        VStack{
                            
                            ZStack{
                                
                                RoundedRectangle (cornerRadius: 10)
                                    .frame(width:350 , height:55
                                    )
                                    .foregroundColor(.black.opacity(0.05))
                                // .border(Color.black)
                                    .cornerRadius(20)
                                
                                HStack{
                                    Image("Banner")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.horizontal, 10.0)
                                        .frame(width: 370, height: 230)
                                    
                                }
                                
                                
                            }
                        }
                        .padding(.vertical, 1.0)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        /*
                         ScrollView(.horizontal, showsIndicators: false){
                         HStack{
                         ForEach(0..<subcategory.count) { i in
                         Button(action: { selectedSubCategory = i }){
                         SubCategoryView(isActive: selectedSubCategory == i, text: subcategory[i])
                         }
                         }
                         }
                         .padding()
                         }
                         
                         
                         ProductList()
                         */
                        VStack{
                            
                            HStack{
                                Text("Categories")
                                    .font(.title3)
                                    .bold()
                                    .padding(.leading, 20.0)
                                
                                Spacer()
                            }
                            
                            
                            CategoriesSection2()
                        }
                        //.frame(width: 350, height : 300)
                        .padding(.vertical)
                        .background(Color.gray.opacity(0.1))
                        
                        
                        VStack{
                            
                            HStack{
                                Text("Popular Products")
                                    .font(.title3)
                                    .bold()
                                    .padding(.leading, 20.0)
                                
                                Spacer()
                            }
                            
                            
                            ProductList2()
                        }
                        //.frame(width: 350, height : 300)
                        .padding(.vertical)
                        .background(Color.gray.opacity(0.1))
                    }
                    
                    
                    MenuBar()
                }
                .padding(.top)
                
            
           
            
        }
        .navigationBarHidden(true)
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
                    CategoryBox2(imageName: "Woman", categoryName: "Men", destination: AnyView(OfferPage()))
                    
                    CategoryBox2(imageName: "Woman", categoryName: "Women", destination: AnyView(OfferPage()))
                    
                    CategoryBox2(imageName: "Woman", categoryName: "Men", destination: AnyView(OfferPage()))
                    
                    CategoryBox2(imageName: "Woman", categoryName: "Men", destination: AnyView(OfferPage()))

                }
                .padding()
            }
            
            
            
        }
        .frame(width: 350, height : 150)
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

struct ProductList2: View {
    var body: some View {
        
        ScrollView{
           
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16 ){
                ForEach(1...8, id: \.self){ _ in
                 ProductBox2()
                }
            }
            .padding(.horizontal)
            .padding(.bottom)
            .padding(.top)
            
            
        }
    }
}

struct ProductBox2: View {
    var body: some View{
        VStack{
            
            HStack{
               
                Spacer()
                
                Button(action: {}
                       
                ) {
                    Image(systemName: "heart")
                        .frame(width:5 , height:5)
                        .padding()
                       // .background(Color.red)
                        .foregroundColor(.gray)
                        .cornerRadius(7)
                   
                }
                
            }
            .padding(10.0)
            
            Image("Product_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:200)
                .cornerRadius(10)
            
            VStack{
                Text("Product Name")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.trailing, 26.0)
                
                HStack{
                    
                    HStack{
                        ForEach(0..<5){ _ in
                            Image(systemName: "star.fill")
                                .frame(width:12, height :12)
                                .foregroundColor(.yellow)
                        }
                    }
                    .padding(.trailing, 40.0)
                    
                }
                
                
               
                
                HStack{
                    
                    Text("$99.99")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.black)
                        .padding(.top, 4)
                    
                    Spacer()
                    
                    Button(action: {}
                           
                    ) {
                        Image(systemName: "cart")
                            .frame(width:10 , height:10)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(7)
                       
                    }
                    
                   
                    
                }
                
            }
            .padding()
            
            
            
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius : 5)
    }
}



#Preview {
    HomeView()
}
