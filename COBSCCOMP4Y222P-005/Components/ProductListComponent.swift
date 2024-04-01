//
//  ProductListComponent.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC15 on 2024-03-31.
//

import SwiftUI

struct ProductListComponent: View {
    var body: some View {
       ProductList2()
    }
}

struct ProductList2: View {
    
    @StateObject var productVM : HomeViewModel = HomeViewModel()
    
    @State var navigate : Bool = false
    
    @State var selectedProduct : Item?
    
    
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
    ProductListComponent()
}
