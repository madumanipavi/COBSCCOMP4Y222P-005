//
//  ProductCategoryDetail.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC05 on 2024-03-25.
//

import SwiftUI

struct ProductCategoryDetail: View {
    
    @State private var search: String = ""
        @State private var selectedTab: Int = 0
        
    private let tabs = ["Tops", "Dresses", "Jeans", "Skirts"]
    
    private let categories = ["All", "Chair", "Sofa", "Lamp", "Kitchen", "Table"]
        
    
    var body: some View {
        NavigationView {
                   ZStack {
                       Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1))
                           .ignoresSafeArea()
                       
                       VStack(alignment: .leading) {
                           HStack {
                               Text("Women")
                                   .font(.title)
                                   .fontWeight(.bold)
                                   .foregroundColor(.black)
                                   .padding()
                               
                               Spacer()
                               
                               Button(action: {}) {
                                   Image(systemName: "slider.horizontal.3")
                                       .font(.title)
                                       .foregroundColor(.black)
                                   //    .padding()
                               }
                           }
                           
                           SearchBarView(search: $search)
                               .padding()
                           
                           
                           ScrollView(.horizontal, showsIndicators: false) {
                                                  HStack {
                                                      ForEach(0..<tabs.count) { i in
                                                          Button(action: { selectedTab = i }) {
                                                              CategoryView(isActive: selectedTab == i, text: tabs[i])
                                                          }
                                                      }
                                                  }
                                                  .padding()
                                              }
                                              
                           /*
                           
                           TabView(selection: $selectedTab) {
                               ForEach(0..<tabs.count) { index in
                                   Text(tabs[index])
                                       .tag(index)
                               }
                           }
                           .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                           .padding(.bottom)
                            */
                           
                           ProductGridView()
                           
                           Spacer()
                       }
                   }
                   .navigationBarHidden(true)
               
           }
    }
}

struct SearchBarView: View {
    @Binding var search: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black.opacity(0.5), lineWidth: 1) // Darker stroke color
                .frame(height: 40)
            
            HStack {
                TextField("Search", text: $search)
                    .padding(.horizontal)
                    .background(Color.gray.opacity(0.1)) // Darker background color
                    .cornerRadius(10)
                    .padding(.trailing)
                
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.gray.opacity(0.1)) // Darker background color
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("primary") : Color.blue)
            if (isActive) { Color("Primary")
                .frame(width: 15, height: 2)
                .clipShape(Capsule())
            }
        }
        .padding(.trailing)
    }
}

struct ProductGridView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                ForEach(1...8, id: \.self) { _ in
                    ProductCardView()
                }
            }
            .padding(.horizontal)
                        .padding(.bottom)
        }
    }
}


struct ProductCardView: View {
    var body: some View {
        VStack {
            Image("product_image_placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text("Product Name")
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
    ProductCategoryDetail()
}
