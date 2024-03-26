//
//  TestView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-26.
//

import SwiftUI

struct TestView: View {
    
    @StateObject var productVM : TestViewModel = TestViewModel()
    
    @State var navigate : Bool = false
    
    @State var selectedProduct : Items?
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    
                    /*
                    List{
                        ForEach(productVM.products, id: \.id){
                            product in productCard( product : product)
                        }
                     
                    }
                     */
                  //  ProductGridView2()
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
    
    @ViewBuilder func productCard (product : Items) -> some View {
        
      //  ProductGridView2()
        /*
        ZStack{
            RoundedRectangle (cornerRadius: 10)
                .frame(height:130)
                .foregroundColor(.white)
                .shadow(color : .black.opacity(0.2),radius:6)
            HStack
            {
                
                VStack{
                    Text(product.name ?? "")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(product.category ?? "")  .frame(maxWidth: .infinity, alignment: .leading)
                }
            }.padding(.vertical,8)
                .contentShape(Rectangle())
            //update selected movie and trigger navigaion
                
                
        }
         */
        
        
        VStack {
            Image("product_image_placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(product.name ?? "")
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

/*
struct ProductGridView2: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                ForEach(1...8, id: \.self) { _ in
                    ProductCardView2()
                }
            }
            .padding(.horizontal)
                        .padding(.bottom)
        }
    }
}
 */


struct ProductCardView2: View {
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
    TestView()
}
