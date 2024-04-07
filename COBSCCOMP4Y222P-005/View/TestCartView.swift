//
//  TestCartView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-04-02.
//

import SwiftUI



//struct Item2: Identifiable, Codable {
//    var id = UUID()
//    var name: String
//    var image: String
//    var details: String
//    var quantity: Int
//}

struct TestCartView: View {
    
//    var selectedProduct : Item?
//    @State private var selectedItem: Item? = nil
//    @State private var item: [Item2] = []
//    
//    private func saveItems() {
//        let encoder = JSONEncoder()
//        if let encoded = try? encoder.encode(item) {
//            UserDefaults.standard.set(encoded, forKey: "cartItems")
//        }
//    }
//    
//    
//    private func loadItems() {
//        if let data = UserDefaults.standard.data(forKey: "cartItems") {
//            let decoder = JSONDecoder()
//            if let decoded = try? decoder.decode([Item2].self, from: data) {
//                item = decoded
//            }
//        }
//    }
    
    var body: some View {
        
        Text("Hello world")
        
        
        
//        VStack {
//            
//            ScrollView{
//                Spacer()
//                
//                Image(systemName: "cart.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 100)
//                    .foregroundColor(.yellow)
//                
//                
//                VStack {
//                    Text("Items in My Cart:")
//                        .font(.headline)
//                        .foregroundColor(.black)
//                        .padding(.top)
//                    
//                    ForEach(item) { item2 in
//                        ItemView(item2: item2,
//                                 incrementAction: {
//                            if let index = item.firstIndex(where: { $0.id == item.id }) {
//                                item[index].quantity += 1
//                                saveItems()
//                            }
//                        },
//                                 decrementAction: {
//                            if let index = item.firstIndex(where: { $0.id == item.id }) {
//                                if item[index].quantity > 1 {
//                                    item[index].quantity -= 1
//                                    saveItems()
//                                }
//                            }
//                        }
//                        )
//                    }
//                    
//                    
//                    Spacer()
//                    VStack {
//                        VStack {
//                            VStack {
//                                HStack {
//                                    Text("Item Total")
////                                        .font(.custom(Constants.AppFont.regularFont, size: 13))
////                                        .foregroundColor(Constants.AppColor.Black)
//                                    Spacer()
//                                    Text("Ru.1000.00")
////                                        .font(.custom(Constants.AppFont.boldFont, size: 13))
////                                        .foregroundColor(Constants.AppColor.Black)
//                                }
//                                .padding(.top, 10)
//                                .padding(.horizontal, 15)
//                                
//                                HStack {
//                                    Text("Delivery Charges")
////                                        .font(.custom(Constants.AppFont.regularFont, size: 13))
////                                        .foregroundColor(Constants.AppColor.Black)
//                                    Spacer()
//                                    Text("Ru:150.00")
////                                        .font(.custom(Constants.AppFont.boldFont, size: 13))
////                                        .foregroundColor(Constants.AppColor.Black)
//                                }
//                                .padding(.top, 5)
//                                .padding(.horizontal, 15)
//                                
//                                HStack {
//                                    Text("Discount")
////                                        .font(.custom(Constants.AppFont.regularFont, size: 13))
////                                        .foregroundColor(Constants.AppColor.Black)
//                                    Spacer()
//                                    Text("10%")
////                                        .font(.custom(Constants.AppFont.boldFont, size: 13))
////                                        .foregroundColor(Color.init(hex: "036440"))
//                                }
//                                .padding(.top, 5)
//                                .padding(.horizontal, 15)
//                                
//                                
//                                .padding(.vertical, 5)
//                                
//                                HStack {
//                                    Text("Total Amount")
////                                        .font(.custom(Constants.AppFont.boldFont, size: 16))
////                                        .foregroundColor(Constants.AppColor.Black)
//                                    Spacer()
//                                    Text("Ru: 1050.00")
////                                        .font(.custom(Constants.AppFont.boldFont, size: 16))
////                                        .foregroundColor(Constants.AppColor.Black)
//                                }
//                                .padding(.horizontal, 15)
//                                .padding(.bottom, 5)
//                                
//                                
//                            }
//                            .padding(.top, 2)
//                            
//                            
//                            VStack {
//                                HStack {
//                                    Spacer()
//                                    
//                                    Button(action: {
//                                        
//                                    }) {
//                                        Text("Checkout")
//                                            .font(.headline)
//                                            .foregroundColor(.white)
//                                            .padding()
//                                            .background(Color.yellow)
//                                            .cornerRadius(10)
//                                    }
//                                    
//                                    Spacer()
//                                    
//                                    Button(action: {
//                                        
//                                    }) {
//                                        Text("Cancel")
//                                            .font(.headline)
//                                            .foregroundColor(.white)
//                                            .padding()
//                                            .background(Color.gray)
//                                            .cornerRadius(10)
//                                    }
//                                    
//                                    Spacer()
//                                }
//                                .padding(.bottom)
//                            }
//                        }
//                    }
//                    .padding()
//                }
//                .onAppear {
//                    loadItems()
//                    
//                    
//                    if let product = selectedProduct {
//                        item.append(Item2(name: product.Product_name,
//                                          image: product.Image_url,
//                                          details: product.Description,
//                                          quantity: 2,
//                                          price: product.Price))
//                        saveItems()
//                        
//                    }
//                    
//                }
//                
//            }
//            
//        }

    }
}




//struct ItemCellTypeThree: View {
// var item2: Item2
// var body: some View {
//     HStack {
//         Image("Image3")
//             .resizable()
//             .aspectRatio(contentMode: .fit)
//             .frame(width: 100, height: 100)
//         
//         VStack(alignment: .leading, spacing: 8) {
//             Text(item2.name)
//                 .font(.headline)
//                 .foregroundColor(.black)
//             
//             Text(item2.details)
//                 .font(.subheadline)
//                 .foregroundColor(.gray)
//             
//             HStack {
//                 Button(action: {}) {
//                     Image(systemName: "minus")
//                         .foregroundColor(.gray)
//                         .frame(width: 25, height: 25)
//                 }
//                 
//                 Text("1")
//                 
//                 Button(action: {}) {
//                     Image(systemName: "plus")
//                         .foregroundColor(.gray)
//                         .frame(width: 25, height: 25)
//                 }
//             }
//         }
//         .padding()
//         .background(Color.white)
//         .cornerRadius(10)
//         .shadow(radius: 5)
//         .padding()
//         
//         Spacer()
//     }
//     .frame(maxWidth: .infinity)
// }
//}
//
//struct ItemView: View {
// var item2: Item2
// @State private var quantity: Int = 1
// var incrementAction: (() -> Void)? = nil
// var decrementAction: (() -> Void)? = nil
//
// var body: some View {
//     HStack {
//         Image("Image3")
//             .resizable()
//             .aspectRatio(contentMode: .fit)
//             .frame(width: 100, height: 100)
//         
//         VStack(alignment: .leading) {
//             HStack {
//                 Text(item2.name)
//                     .font(.headline)
//                 Spacer()
//                 Button(action: {
//                     // Remove the item from the cart or perform any other action
//                 }) {
//                     Image(systemName: "trash")
//                         .foregroundColor(Color.black)
//                 }
//             }
//             
//             Text(item2.details)
//                 .font(.subheadline)
//                 .foregroundColor(.gray)
//             
//             HStack {
//                 Button(action: {
//                     if quantity > 1 {
//                         quantity -= 1
//                         // Update the quantity in the cart
//                     }
//                 }) {
//                     Image(systemName: "minus.circle")
//                         .font(.title)
//                 }
//                 .padding()
//                 
//                 Text("\(quantity)")
//                 
//                 Button(action: {
//                     if quantity < 10 {
//                         quantity += 1
//                         // Update the quantity in the cart
//                     }
//                 }) {
//                     Image(systemName: "plus.circle")
//                         .font(.title)
//                 }
//                 .padding()
//             }
//         }
//         .padding()
//         .background(Color.white)
//         .cornerRadius(10)
//         .shadow(radius: 5)
//         .padding()
//         
//         Spacer()
//     }
//     .frame(maxWidth: .infinity)
// }
//}


#Preview {
    TestCartView()
}
