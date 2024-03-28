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
                    
                    VStack {
                        
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
                                    .foregroundColor(Color.white)
                                    .padding(12)
                                    .background()
                            }
                                
                        }
                        
                        
                        
                        
                    }
                    
                    
                }
                
            }
            
        }
        .navigationBarHidden(true)
        
    }
}

#Preview {
    ProductDetailView()
}
