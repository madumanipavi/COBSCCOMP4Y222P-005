//
//  HomeNewview.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC15 on 2024-03-31.
//

import SwiftUI
import Kingfisher
import URLImage


struct HomeNewview: View {
    
    @StateObject var productVM : ProductCategoryDetailViewModel = ProductCategoryDetailViewModel()
    
    @State var navigate : Bool = false
    
    @State var selectedProduct : Item?
    
    @State private var searchtext: String = ""
    @State private var selectedSubCategory: Int = 0
    
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
                                    .frame(width: 370, height: 200)
                                
                            }
                            
                            
                        }
                    }
                    .padding(.vertical, 1.0)
                    
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
                    .padding(.top, 10.0)
                    //.background(Color.white.opacity(0.1))
                    
                    
                    VStack{
                        
                        HStack{
                            Text("Popular Products")
                                .font(.title3)
                                .bold()
                                .padding(.leading, 20.0)
                            
                            Spacer()
                            
                            Text("See All>")
                                .font(.subheadline)
                                .padding(.trailing, 30.0)
                                .foregroundColor(.gray)
                            
//                            Image(systemName: "chevron.forward.2")
//                                .padding(.trailing, 30.0)
//                                .foregroundColor(.gray)
                        }
                        
                       
                     //   ProductList2()
                    }
                    //.frame(width: 350, height : 300)
                    .padding(.top)
                    .background(Color.white.opacity(0.1))
                
                    
                 //   ProductList()
                  //  ScrollView{
                        
                        
                        
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
                                destination: ProductDetailView(selectedProduct: selectedProduct),
                                isActive: $navigate,
                                label: { EmptyView() }
                            )
                        )
                    }
                    MenuBar()
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
}







#Preview {
    HomeNewview()
}
