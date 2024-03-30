//
//  TestView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-26.
//

import SwiftUI
import URLImage


struct TestView: View {
    
    @State private var searchtext: String = ""
    @State private var selectedSubCategory: Int = 0
    private let subcategory = ["Tops", "Dresses" , "Jeans" , "Skirts", "Tshirts"]
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
                
                ProductCategoryScrollView()
                
                MenuBar()
                 
                
          
                
              
                
            }
          //  .navigationTitle("Products")
                  //      .navigationBarTitleDisplayMode(.inline)
            
        }
        .navigationBarHidden(true)
        
      }
               // .padding(.vertical, 8)
            
            
        
    }
    
   
    

struct ProductCategoryScrollView : View {
    
    @StateObject var productVM : ProductCategoryDetailViewModel = ProductCategoryDetailViewModel()
    
    @State var navigate : Bool = false
    
    @State var selectedProduct : Item?
    
    
    
  
    
    var body: some View {
       
        NavigationView {
            
        
            //////////////////////////////
            ScrollView{
            //    VStack {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(productVM.products, id: \.id) {
                            product in productCard(product: product)
                        }
                    }
              //  }
                    .padding(.horizontal)
                    .padding(.bottom)
                    .padding(.top)
              //  .navigationTitle("Products")
                .navigationBarTitleDisplayMode(.inline)
                .background(
                    NavigationLink(
                        destination: ProductDetailView(selectedProduct: selectedProduct),
                        isActive: $navigate,
                        label: { EmptyView() }
                    )
                )
            }
            
            ///////////////////////////////////
        }
            }
            
            @ViewBuilder func productCard(product: Item) -> some View {
                
                    
                    
                    VStack() {
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
                        URLImage(URL(string: product.Image_url)!){image in image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 150)}
                        VStack{
                            Text(product.Product_name ?? "")
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
                                Text("\(product.Price)")
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
                    .contentShape(Rectangle())
                    .onTapGesture {
                        selectedProduct = product
                        navigate = true
                    }
                }
               // .padding(.vertical, 8)
            
            
}

#Preview {
    TestView()
}
