//
//  ProductDetailView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-28.
//

import SwiftUI
import URLImage

struct ProductDetailView: View {
    
    
    @State private var quantity: Int = 1
    @State private var selectedSize: String = "M"
    
    @State private var selectedColor: String = "Blue"
    @State public var  pricePerItem: Float = 0
    
    @State public var  pricePerItems: String = ""
    
 
    let sizes = ["S", "M" , "L", "XL"]
    let colors: [(name: String, color:Color)] = [("Blue", .blue), ("Red", .red), ("Green", .green), ("Yellow", .yellow)]
    
//    var  priceProduct: Double {
//        let priceItem = Double(selectedProduct?.Price ?? 0) ?? 0
//        return
//    }
   
    var totalPrice: Double {
        
        let priceItem = Double(selectedProduct?.Price ?? 0) ?? 0
        return (Double(quantity)) * priceItem
    }
    
   
    var selectedProduct: Item?
  
  
    var body: some View {
        NavigationView{
            
            VStack{
                
                ScrollView{
                    //back button and heart
                    HStack(spacing: 1) {
                        
                        NavigationLink(destination: ProductCategoryDetailview()) {
                            Image(systemName: "arrow.backward")
                                .padding(.leading, 30.0)
                        }
                        .foregroundColor(.black)
                        
                        Spacer()
                        Button(action: {}){
                            Image(systemName: "heart")
                                .foregroundColor(.black)
                                .padding(.trailing, 50.0)
                            
                        }
                        
                    }
                    
                    //image
                    VStack{
                        
                        ZStack{
                            
                            RoundedRectangle (cornerRadius: 10)
                                .frame(width:350 , height:55
                                )
                                .foregroundColor(.black.opacity(0.05))
                            // .border(Color.black)
                                .cornerRadius(20)
                            
//                            HStack{
//                                Image("Top1")
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fill)
//                                    .frame(width: 370, height: 430)
//                                   // .scaledToFill()
//                                   .clipped()
   
//                            }
                            
                            //image
                            HStack {
                                if let imageUrlString = selectedProduct?.Image_url, let imageUrl = URL(string: imageUrlString) {
                                            URLImage(imageUrl) { image in image
                                                              .resizable()
                                                              .aspectRatio(contentMode: .fill)
                                                              .clipped()
                                                           
                                                      }
                                                  } else {
                                                      EmptyView()
                                      }
                                }

                        }
                    }
                    .padding(.vertical, 1.0)
                    
                    //other section
                    VStack(alignment: .leading, spacing: 16) {
                        
                        Text(selectedProduct?.Product_name ?? "")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.top, 25.0)
                        
                      
                            
                         
                        
//                        Text("\(pricePerItem)")
//                            .foregroundColor(.black)
//                            .padding(.horizontal, 5.0)
                        
                        //price
                        HStack{
                            
                            Text("Price :")
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            
                            Text("Rs.\(String(format: "%.2f", selectedProduct?.Price ?? 0))")
                                .font(.title2)
                                .foregroundColor(.black)
                                .padding(.horizontal, 5.0)
                        }
                        
                        
                         
                        
//                        if let price = selectedProduct?.Price {
//                                       pricePerItem = price
//                                       Text("Price: \(pricePerItem)")
//                                           .font(.headline)
//                                           .foregroundColor(.gray)
//                                           .padding(.top, 8)
//                                   }
                        
                        
                    //    Text("Name")
                   //     Text(selectedProduct?.Product_name ?? "").bold()
                        
                        
                        //rating and minus ,plus
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
                                   // .frame(width: 40 , height: 40)
                                    .clipShape(Circle())
                            }
                            
                            Text("\(quantity)")
                                .foregroundColor(.black)
                                .padding(.horizontal, 5.0)
                            
                            Button(action: {
                                quantity += 1
                            }){
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .padding(12)
                                    .background(Color.blue.opacity(0.7))
                                    .frame(width: 30 , height: 40)
                                    .clipShape(Circle())
                            }
                                
                        }
                        
                        
                        Text("Description")
                            .font(.headline)
                            .bold()
                            .foregroundColor(.black)
                            .padding(.top, 8)
                        
                           

                           Text(selectedProduct?.Description ?? "")
                            .foregroundColor(.black)
                            .lineSpacing(8)
                        
                        
                        Divider()
                            .background(Color.gray)
                        
                        // selected size
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
                        
                        // selected color
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
                        
                        // material section
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("Material")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text("Premium Fabric, Solid wood")
                                .foregroundColor(.black)
                        }
                        
                     //   PopularProductsSection2()
                        
                        VStack{
                            
                            HStack(spacing: 16) {
                                //Display tottla price box
                                VStack {
                                    
                                    HStack {
                                        Text("Total Price:")
                                            .foregroundColor(.black)
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                        
                                        Spacer()
                                        
//                                        Text("\(totalPrice)")
//                                            .foregroundColor(.black)
//                                            .padding(.horizontal, 5.0)
//                                        
                                        Text("Rs.\(String(format: "%.2f", totalPrice))")
                                            .foregroundColor(.black)
                                            .padding(.horizontal, 5.0)
                                        /*
                                        Text("$\(totalPrice, specifier: "%.2f")")
                                            .foregroundColor(.black)
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                         */
                                    }
                                    
                                    Button(action: {}) {
                                        Text("Add to Cart")
                                            .foregroundColor(Color.white) // Use your custom blue color here
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .padding(.vertical, 12)
                                            .padding(.horizontal, 24)
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                    }
                                    .frame(width: 300) // Set the desired width
                                    .padding(.top, 16)
                                }
                            }
                            
                        }
                        .frame(width: 300, height : 80)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        
                    }
                    
                    .padding()
                    .background(Color("CustomDarkBlue"))
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .offset(y: -40)
                    
                    
                }
              //  MenuBar()
                MenuBar()
            }
            
        }
        .navigationBarHidden(true)
        
    }
   
    
}

//struct PopularProductsSection2: View {
//    var body: some View {
//        VStack{
//            
//            
//            HStack(spacing: 16) {
//                VStack {
//                    HStack {
//                        Text("Total Price:")
//                            .foregroundColor(.black)
//                            .font(.headline)
//                            .fontWeight(.semibold)
//                        
//                        Spacer()
//                        
//                        Text(" Rs.1299")
//                            .foregroundColor(.black)
//                            .font(.headline)
//                            .fontWeight(.semibold)
//                        
//                        Text("\(pricePerItem)")
//                            .foregroundColor(.black)
//                            .padding(.horizontal, 5.0)
//                        /*
//                        Text("$\(totalPrice, specifier: "%.2f")")
//                            .foregroundColor(.black)
//                            .font(.headline)
//                            .fontWeight(.semibold)
//                         */
//                    }
//                    
//                    Button(action: {}) {
//                        Text("Add to Cart")
//                            .foregroundColor(Color.white) // Use your custom blue color here
//                            .font(.headline)
//                            .fontWeight(.semibold)
//                            .padding(.vertical, 12)
//                            .padding(.horizontal, 24)
//                            .background(Color.blue)
//                            .cornerRadius(10)
//                    }
//                    .frame(width: 300) // Set the desired width
//                    .padding(.top, 16)
//                }
//            }
//                
//          
//            
//            
//            
//        }
//        .frame(width: 300, height : 80)
//        .padding()
//        .background(Color.gray.opacity(0.1))
//        .cornerRadius(10)
//    }
//}


#Preview {
    ProductDetailView()
}
