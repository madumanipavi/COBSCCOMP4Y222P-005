//
//  ProductDetail.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBMPC04PC03 on 2024-03-21.
//

import SwiftUI

struct ProductDetail: View {
    
    @State private var quantity: Int = 1
    @State private var selectedSize: String = "M" // Default selected size
        
    
    @State private var selectedColor: String = "Blue"
    
    let sizes = ["S", "M", "L", "XL"]
    let colors: [(name: String, color: Color)] = [("Blue", .blue), ("Red", .red), ("Green", .green), ("Yellow", .yellow)]
    let pricePerItem: Double = 1299
    var totalPrice: Double {
        return Double(quantity) * pricePerItem
    }
    var body: some View {
        VStack{
            ScrollView{
                ZStack {
                    
                    Color("CustomBlue") // Use your custom blue color here
                        .ignoresSafeArea()
                    
                    VStack(spacing: 0) {
                        
                        HStack(spacing: 16) {
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            
                            Button(action: {}) {
                                Image(systemName: "heart")
                                    .foregroundColor(.black)
                                    .padding(12)
                                    .background(Color("CustomRed")) // Use your custom red color here
                                    .clipShape(Circle())
                            }
                            
                            Spacer()
                            
                        }
                        
                        Image("Top1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxHeight: 500)
                            .clipped()
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        
                        
                        
                        VStack(alignment: .leading, spacing: 16) {
                            
                            Text("Casual Printed Dress")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            HStack(spacing: 4) {
                                ForEach(0..<5) { _ in
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                }
                                Text("(4.9)")
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Button(action: {
                                    quantity -= 1
                                }){
                                    Image(systemName: "minus")
                                        .foregroundColor(Color.white)
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
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding(.top, 8)
                            
                            Text("Experience the epitome of comfort with our Luxe Comfort Chair. Crafted with precision and designed for relaxation, this chair is a perfect addition to your living space.")
                                .foregroundColor(.black)
                                .lineSpacing(8)
                            
                            Divider()
                                .background(Color.gray)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Size")
                                    .font(.headline)
                                    .fontWeight(.bold)
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
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                HStack(spacing: 16) {
                                    ForEach(colors, id: \.name) { color in
                                        Button(action: {
                                            selectedColor = color.name
                                        }) {
                                            VStack {
                                                Circle()
                                                    .foregroundColor(color.color)
                                                    .frame(width: 32, height: 32)
                                                // Text(color.name)
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
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                Text("Premium Fabric, Solid Wood")
                                    .foregroundColor(.black)
                            }
                            
                            
                            ////
                            ///
                            PopularProductsSection2()
                            // .padding(.horizontal)
                            
                            
                            
                            ////
                        }
                        .padding()
                        .background(Color("CustomDarkBlue")) // Use your custom dark blue color here
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .offset(y: -40)
                    }
                    
                    
                }
                MenuBar2()
            }
        }
        
        
    }
}

struct PopularProductsSection2: View {
    var body: some View {
        VStack{
            
            
            HStack(spacing: 16) {
                VStack {
                    HStack {
                        Text("Total Price:")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text(" Rs.1299")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(.semibold)
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
}


struct MenuBar2: View {
    var body: some View {
        HStack {
            Spacer()
            
            MenuButton2(imageName: "house.fill", text: "Home")
            
            Spacer()
            
            MenuButton2(imageName: "heart.fill", text: "Favorites")
            
            Spacer()
            
            MenuButton2(imageName: "cart.fill", text: "Cart")
            
            Spacer()
            
            MenuButton2(imageName: "person.fill", text: "Profile")
            
            Spacer()
        }
        .padding(.vertical, 10)
        .background(Color.white)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}


struct MenuButton2: View {
    var imageName: String
    var text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
            
            Text(text)
                .font(.caption)
                .foregroundColor(.primary)
        }
    }
}
/*
 #Preview {
 ProductDetail()
 }
 */
struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail()
            .preferredColorScheme(.light)
    }
}
