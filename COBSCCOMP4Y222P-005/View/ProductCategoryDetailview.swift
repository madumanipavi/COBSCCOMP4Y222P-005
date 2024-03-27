//
//  ProductCategoryDetailview.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-27.
//

import SwiftUI

struct ProductCategoryDetailview: View {
    
    @State private var searchtext: String = ""
    @State private var selectedSubCategory: Int = 0
    
    private let subcategory = ["Tops", "Dresses" , "Jeans" , "Skirts"]
    var body: some View {
        NavigationView{
            
            VStack(){
                HStack {
                    Text("Women")
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
            }
            
        }
        .navigationBarHidden(true)
    }
}

struct SearchBar2 : View {
    
    @Binding var searchtext : String
    
    var body: some View{
        
        ZStack{
            
            RoundedRectangle (cornerRadius: 10)
                .frame(width:350 , height:55
                )
                .foregroundColor(.black.opacity(0.05))
            // .border(Color.black)
                .cornerRadius(5)
            
            HStack{
                
                TextField(" Enter Username", text: $searchtext)
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

struct SubCategoryView: View{
    
    let isActive : Bool
    let text : String
    
    var body: some View{
        VStack{
            Text(text)
                .foregroundColor(isActive ? Color("Blue") : Color.blue)
            
            if(isActive) {
                Color("Primary")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
            
        }
        .padding(.trailing)
    }
}
struct ProductList: View {
    var body: some View {
        
        ScrollView{
           
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16 ){
                ForEach(1...8, id: \.self){ _ in
                 ProductBox()
                }
            }
            .padding(.horizontal)
            .padding(.bottom)
            .padding(.top)
            
            
        }
    }
}

struct ProductBox: View {
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
    ProductCategoryDetailview()
}
