//
//  FilterView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC15 on 2024-03-31.
//

import SwiftUI

struct FilterView: View {
    @State private var selectedSize: String = "All"
    let sizes = ["All", "In Stock" , "Out Of Stock"]
    
    @State private var selectedcategory: String = "Dresses"
    let subcategories = ["Dresses", "Tops" , "Tshirts" , "Skirts" , "Jeans"]
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                HStack {
                    //Image(systemName: "arrow.backward")
                    Button(action: {}) {
                        Image(systemName: "arrow.backward")
                            .padding(.leading, 30.0)
                           // .padding(.trailing, 30.0)
                            //.padding(.trailing, 20.0)
                            .font(.title)
                            .foregroundColor(.black)
                    }
                   Spacer()
                    
                    Text("Filters")
                        .font(.title)
                        .bold()
                        .padding(.trailing, 200.0)
                        //.padding(.leading, 20.0)
                    
     
                }
                .padding(.top)
                
                Text("Availability")
                    .font(.title2)
                    .padding(.trailing, 200.0)
                
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
                                .cornerRadius(10)
                        }
                    }
                }
                
                Text("Subcatgories")
                    .font(.title2)
                    .padding(.trailing, 200.0)
                
                HStack(spacing: 16) {
                    ForEach(subcategories, id: \.self) { size in
                        
                        Button(action: {
                            selectedcategory = size
                        }) {
                            Text(size)
                                .foregroundColor(selectedcategory == size ? Color.white : Color.black)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(selectedcategory == size ? Color.blue : Color.gray)
                                .cornerRadius(10)
                        }
                    }
                }
                
                ZStack{
                    
                    RoundedRectangle (cornerRadius: 10)
                        .frame(width:350 , height:55)
                        .foregroundColor(.black.opacity(0.05))
                    // .border(Color.black)
                        .cornerRadius(5)
                    
                    Text("Enter Password")
                        .padding(.trailing, 60.0)
                    //  .background(Color.black.opacity(0.05))
                        .frame(width : 300 , height : 55)
                        .cornerRadius(10)
                    
                }
                .padding(.bottom, 30.0)
                
                
                
            }
           
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    FilterView()
}
