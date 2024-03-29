//
//  ProductSubCategoryDetailView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-29.
//

import SwiftUI

struct ProductSubCategoryDetailView: View {
    
    
    @StateObject var productVM : ProductCategoryDetailViewModel = ProductCategoryDetailViewModel()
    
    @State var navigate : Bool = false
    
    @State var selectedProduct : Item?
    
    
    var body: some View {
        NavigationView{
            
            ZStack{
                VStack{
                    
                   
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                            ForEach(productVM.products, id: \.id) {
                                //_ in
                                //ProductCardView2()
                                product in productCard( product : product)
                            }
                        }
                        .padding(.horizontal)
                                    .padding(.bottom)
                    }
                }
            }
             
            
        }
    }
    
    
    
    @ViewBuilder func productCard (product : Item) -> some View {
          
        
          
          
          VStack {
              Image("product_image_placeholder")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(height: 200)
                  .cornerRadius(10)
              
              VStack(alignment: .leading) {
                  Text(product.Product_name ?? "")
                      .font(.headline)
                      .foregroundColor(.black)
                  
                  HStack {
                      ForEach(0..<5) { _ in
                          Image(systemName: "star.fill")
                              .foregroundColor(.yellow)
                      }
                  }
                  
                  Text("$99.99")
                      .font(.subheadline)
                      .fontWeight(.bold)
                      .foregroundColor(.black)
                      .padding(.top, 4)
                  
                  Spacer()
                  
                  HStack {
                      Spacer()
                      
                      Button(action: {}) {
                          Image(systemName: "cart")
                              .padding()
                              .background(Color.blue)
                              .foregroundColor(.white)
                              .cornerRadius(10)
                      }
                      
                      Button(action: {}) {
                          Image(systemName: "heart")
                              .padding()
                              .background(Color.red)
                              .foregroundColor(.white)
                              .cornerRadius(10)
                      }
                  }
              }
              .padding()
          }
          .background(Color.white)
          .cornerRadius(10)
          .shadow(radius: 5)
      }
     
}

#Preview {
    ProductSubCategoryDetailView()
}
