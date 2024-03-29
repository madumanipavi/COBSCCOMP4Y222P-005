//
//  ProductDetailView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-28.
//

import SwiftUI

struct ProductDetailView: View {
    
    
    @State private var quantity: Int = 1
    @State private var selectedSize: String = "M"
    
    @State private var selectedColor: String = "Blue"
    
    let sizes = ["S", "M" , "L", "XL"]
    let colors: [(name: String, color:Color)] = [("Blue", .blue), ("Red", .red), ("Green", .green), ("Yellow", .yellow)]
    let pricePerItem: Double = 1299
    var totalPrice: Double {
        return Double(quantity) * pricePerItem
    }
    var body: some View {
        NavigationView{
            
            VStack{
                
                ScrollView{
                    
                    HStack(spacing: 1) {
                        
                        
                        Spacer()
                        Button(action: {}){
                            Image(systemName: "heart")
                                .foregroundColor(.black)
                                .padding(.trailing, 50.0)
                            
                        }
                        
                        
                    }
                    
                    VStack{
                        
                        ZStack{
                            
                            RoundedRectangle (cornerRadius: 10)
                                .frame(width:350 , height:55
                                )
                                .foregroundColor(.black.opacity(0.05))
                            // .border(Color.black)
                                .cornerRadius(20)
                            
                            HStack{
                                Image("Top1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.top, 300.0)
                                    .frame(width: 370, height: 230)
                                   .clipped()
                                
                            }
                            
                            
                        }
                    }
                    .padding(.vertical, 1.0)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        
                        Text("Casual Printed Dress")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        HStack(spacing: 4){
                            ForEach(0..<5) { _ in
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                            
                            Text("(4.9)")
                            
                            Spacer()
                            
                            Button(action: {
                                quantity -= 1
                            }){
                                Image(systemName: "minus")
                                    .foregroundColor(.white)
                                    .padding(12)
                                    .background(Color.blue.opacity(0.7))
                                    .clipShape(Circle())
                            }
                            
                            Text("\(quantity)")
                                .foregroundColor(.black)
                            
                            Button(action: {
                                quantity += 1
                            }){
                                Image(systemName: "minus")
                                    .foregroundColor(.white)
                                    .padding(12)
                                    .background(Color.blue.opacity(0.7))
                                    .clipShape(Circle())
                            }
                                
                        }
                        
                        Text("Description")
                            .font(.headline)
                            .bold()
                            .foregroundColor(.black)
                            .padding(.top, 8)
                        
                        Text("ahgshdggg hhhhhhhhhhdhdhhdhhhjh hhhhdd dddhdhhhhdhdhhhhhhhhd")
                            .foregroundColor(.black)
                            .lineSpacing(8)
                        
                        
                        Divider()
                            .background(Color.gray)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Size")
                                .font(.headline)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                            
                            
                            HStack(spacing: 16) {
                                ForEach(sizes, id: \.self) { size in
                                    
                                    Button(action: {
                                        selectedSize = size
                                    }) {
                                        Text(size)
                                            .foregroundColor(selectedSize == size ? Color.white : Color.black)
                                            .padding(.vertical, 8)
                                            .padding(.horizontal, 16)
                                            .background(selectedSize == size ? Color.blue : Color.gray)
                                            .cornerRadius(20)
                                    }
                                }
                            }
                            
                            
                            
                        }
                        
                        Divider()
                            .background(Color.gray)
                        
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Color")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.black)
                            
                            HStack(spacing: 16) {
                                ForEach(colors, id: \.name) {color in
                                    Button(action: {
                                        selectedColor = color.name
                                    }){
                                        VStack {
                                            Circle()
                                                .foregroundColor(color.color)
                                                .frame(width:32, height:32)
                                                .foregroundColor(selectedColor == color.name ? Color.white : Color.black)
                                        }
                                    }
                                }
                            }
                        }
                        
                        Divider()
                            .background(Color.gray)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Material")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text("Premium Fabric, Solid wood")
                                .foregroundColor(.black)
                        }
                        
                        PopularProductsSection2()
                        
                        
                        
                    }
                    
                    .padding()
                    .background(Color("CustomDarkBlue"))
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .offset(y: -40)
                    
                    
                }
                MenuBar()
            }
            
        }
        .navigationBarHidden(true)
        
    }
}

#Preview {
    ProductDetailView()
}
