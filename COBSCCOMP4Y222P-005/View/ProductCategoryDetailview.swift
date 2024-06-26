//
//  ProductCategoryDetailview.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-27.
//

import SwiftUI
import Kingfisher
import URLImage

struct ProductCategoryDetailview: View {
    
 //   @StateObject var subcategoryproductVM : ProductCategoryDetailViewModel = ProductCategoryDetailViewModel()
    
    @StateObject var productVM : ProductCategoryDetailViewModel = ProductCategoryDetailViewModel(for: "Dresses")
    @ObservedObject var cartViewModel: CartViewModel
    
    @State var navigate : Bool = false
    
    @State var selectedProduct : Item?
    
    @State private var searchtext: String = ""
    @State var selectedSubCategory: String = "Dresses"
//    @State private var selectedSubCategory: Int = 0
    
    private let subcategory = ["Dresses" ,"Tops", "Jeans" , "Skirts", "Tshirts"]
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
                
//                ScrollView(.horizontal, showsIndicators: false){
//                    HStack{
//                        ForEach(0..<subcategory.count) { i in
//                            Button(action: { selectedSubCategory = i }){
//                                SubCategoryView(isActive: selectedSubCategory == i, text: subcategory[i])
//                            }
//                        }
//                    }
//                    .padding()
//               }
                
                ScrollView(.horizontal, showsIndicators: false) {
                          HStack {
                              ForEach(subcategory, id: \.self) { category in
                                  Button(action: {
                                      selectedSubCategory = category
                                      productVM.loadGetProduct(for: selectedSubCategory)
                                  }) {
                                      SubCategoryView(isActive: selectedSubCategory == category, text: category)
                                  }
                              }
                          }
                          .padding()
                      }

                
             //   ProductList()
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(productVM.products, id: \.id) {
                            //_ in
                            //ProductCardView2()
                            product in productCard( product : product)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    .padding(.top)
                    .navigationBarTitleDisplayMode(.inline)
                    .background(
                        NavigationLink(
                            destination: ProductDetailView(cartViewModel: cartViewModel,selectedProduct: selectedProduct),
                            isActive: $navigate,
                            label: { EmptyView() }
                        )
                    )
                }
                MenuBar(cartViewModel: cartViewModel)
            }
        }
        .navigationBarHidden(true)
    }
    @ViewBuilder func productCard (product : Item) -> some View {
        //var body: some View{
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
                .padding(1.0)
                URLImage(URL(string: product.Image_url)!){image in image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 200)}
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
                        
                        
                        
                        Text("Rs.\(String(format: "%.2f", product.Price ?? 0))")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.black)
                            .padding(.top, 4)
                        Spacer()
                        Button(action: {
                          
                            if let selectedProduct = selectedProduct {
                                            let product =
                                Products(
                                    id: selectedProduct._id,
                                                                 
                                    productName: selectedProduct.Product_name,
                                                                  
                                                                 
                                   selectedSize: "s",
                                  selectedColor: "green",
                                                                 
                                    price: selectedProduct.Price,
                                    image: selectedProduct.Image_url,                      quantity: 1,
                                
                                    total: selectedProduct.Price)
                                            cartViewModel
                                //.addToCart(product: product)
                                .addToCart(product: product, selectedSize: nil, selectedColor: nil, quantity: 1, total: selectedProduct.Price)
                                        }
                            
                            
                            
                        }
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
}




struct SubCategoryView: View{
    
    let isActive : Bool
    let text : String
    
    var body: some View{
        VStack(alignment: .leading, spacing: 0){
            Text(text)
                .foregroundColor(isActive ? Color(.black) : Color.blue)
            
            if(isActive) {
                Color("Primary")
                    .frame(width: 15, height: 2)
                   .clipShape(Capsule())
            }
            
        }
        .padding(.trailing)
    }
}
 
#Preview {
    ProductCategoryDetailview(cartViewModel: CartViewModel())
}
