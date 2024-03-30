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
                                    .frame(width: 370, height: 430)
                                   // .scaledToFill()
                                   .clipped()
                                
                                
                                
                            }
                            
                            
                        }
                    }
                    .padding(.vertical, 1.0)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        
                        Text(selectedProduct?.Product_name ?? "")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.top, 25.0)
                        
                      
                            
                         
                        
//                        Text("\(pricePerItem)")
//                            .foregroundColor(.black)
//                            .padding(.horizontal, 5.0)
                        
                        
                                    
                        
                        Text("Rs.\(String(format: "%.2f", selectedProduct?.Price ?? 0))")
                            .foregroundColor(.black)
                            .padding(.horizontal, 5.0)
                        
                        
                         
                        
//                        if let price = selectedProduct?.Price {
//                                       pricePerItem = price
//                                       Text("Price: \(pricePerItem)")
//                                           .font(.headline)
//                                           .foregroundColor(.gray)
//                                           .padding(.top, 8)
//                                   }
                        
                        
                    //    Text("Name")
                   //     Text(selectedProduct?.Product_name ?? "").bold()
                        
                        
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
                        
                            /*import SwiftUI
                             
                             class DeliveryAddressViewModel: ObservableObject
                             {
                                 static var shared: DeliveryAddressViewModel = DeliveryAddressViewModel()
                                 
                                 
                                 @Published var txtName: String = ""
                                 @Published var txtMobile: String = ""
                                 @Published var txtAddress: String = ""
                                 @Published var txtCity: String = ""
                                 @Published var txtState: String = ""
                                 @Published var txtPostalCode: String = ""
                                 @Published var txtTypeName: String = "Home"
                                 
                                 
                                 @Published var showError = false
                                 @Published var errorMessage = ""
                                 
                                 @Published var listArr: [AddressModel] = []
                                 
                                 
                                 init() {
                                     serviceCallList()
                                 }
                                 
                                 func clearAll(){
                                     txtName = ""
                                     txtMobile = ""
                                     txtAddress = ""
                                     txtCity = ""
                                     txtState = ""
                                     txtPostalCode = ""
                                     txtTypeName = "Home"
                                 }
                                 
                                 func setData(aObj: AddressModel) {
                                     txtName = aObj.name
                                     txtMobile = aObj.phone
                                     txtAddress = aObj.address
                                     txtCity = aObj.city
                                     txtState = aObj.state
                                     txtPostalCode = aObj.postalCode
                                     txtTypeName = aObj.typeName
                                 }
                                 
                                 
                                 
                                 //MARK: ServiceCall
                                 
                                 func serviceCallList(){
                                     ServiceCall.post(parameter: [:], path: Globs.SV_ADDRESS_LIST, isToken: true ) { responseObj in
                                         if let response = responseObj as? NSDictionary {
                                             if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                                                 
                                                 
                                                 self.listArr = (response.value(forKey: KKey.payload) as? NSArray ?? []).map({ obj in
                                                     return AddressModel(dict: obj as? NSDictionary ?? [:])
                                                 })
                                             
                                             }else{
                                                 self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                                                 self.showError = true
                                             }
                                         }
                                     } failure: { error in
                                         self.errorMessage = error?.localizedDescription ?? "Fail"
                                         self.showError = true
                                     }
                                 }
                                 
                                 func serviceCallRemove(cObj: AddressModel){
                                     ServiceCall.post(parameter: ["address_id": cObj.id ], path: Globs.SV_REMOVE_ADDRESS, isToken: true ) { responseObj in
                                         if let response = responseObj as? NSDictionary {
                                             if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                                                 
                                                 self.serviceCallList()
                                             
                                             }else{
                                                 self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                                                 self.showError = true
                                             }
                                         }
                                     } failure: { error in
                                         self.errorMessage = error?.localizedDescription ?? "Fail"
                                         self.showError = true
                                     }
                                 }
                                 
                                 func serviceCallUpdateAddress( aObj: AddressModel?, didDone: (( )->())? ) {
                                     ServiceCall.post(parameter: ["address_id":  aObj?.id ?? "", "name":  txtName, "type_name": txtTypeName, "phone": txtMobile, "address": txtAddress, "city": txtCity, "state": txtState, "postal_code": txtPostalCode ], path: Globs.SV_UPDATE_ADDRESS, isToken: true ) { responseObj in
                                         if let response = responseObj as? NSDictionary {
                                             if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                                                 self.clearAll()
                                                 self.serviceCallList()
                                                 didDone?()
                                             }else{
                                                 self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                                                 self.showError = true
                                             }
                                         }
                                     } failure: { error in
                                         self.errorMessage = error?.localizedDescription ?? "Fail"
                                         self.showError = true
                                     }

                                 }
                                 
                                 func serviceCallAddAddress(didDone: ((  )->())? ) {
                                     ServiceCall.post(parameter: ["name":  txtName, "type_name": txtTypeName, "phone": txtMobile, "address": txtAddress, "city": txtCity, "state": txtState, "postal_code": txtPostalCode  ], path: Globs.SV_ADD_ADDRESS, isToken: true ) { responseObj in
                                         if let response = responseObj as? NSDictionary {
                                             if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                                                 self.clearAll()
                                                 self.serviceCallList()
                                                 didDone?( )
                                             }else{
                                                 self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                                                 self.showError = true
                                             }
                                         }
                                     } failure: { error in
                                         self.errorMessage = error?.localizedDescription ?? "Fail"
                                         self.showError = true
                                     }

                                 }
                             
                                 
                                 
                             }*/
                            /*import SwiftUI
                                 
                                 class ForgotPasswordViewModel: ObservableObject
                                 {
                                     static var shared: ForgotPasswordViewModel = ForgotPasswordViewModel()
                                     
                                     
                                     @Published var txtEmail: String = ""
                                     @Published var txtResetCode: String = ""
                                     
                                     @Published var txtNewPassword: String = ""
                                     @Published var txtConfirmPassword: String = ""
                                     
                                     @Published var isNewPassword: Bool = false
                                     @Published var isConfirmPassword: Bool = false
                                     
                                     @Published var showVerify: Bool = false
                                     @Published var showSetPassword: Bool = false
                                     
                                     @Published var showError = false
                                     @Published var errorMessage = ""
                                     
                                    
                                     var resetObj: NSDictionary?
                                     
                                    
                                     
                                     
                                     
                                     //MARK: ServiceCall
                                     func serviceCallRequest(){
                                         
                                         if(!txtEmail.isValidEmail) {
                                             self.errorMessage = "Please enter valid email address"
                                             self.showError = true
                                             return
                                         }
                                         
                                         ServiceCall.post(parameter: ["email": txtEmail ], path: Globs.SV_FORGOT_PASSWORD_REQUEST, isToken: false ) { responseObj in
                                             if let response = responseObj as? NSDictionary {
                                                 if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                                                     self.showVerify = true
                                                 }else{
                                                     self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                                                     self.showError = true
                                                 }
                                             }
                                         } failure: { error in
                                             self.errorMessage = error?.localizedDescription ?? "Fail"
                                             self.showError = true
                                         }
                                     }
                                     
                                     func serviceCallVerify(){
                                         
                                         if(txtResetCode.count != 4) {
                                             self.errorMessage = "Please enter valid otp"
                                             self.showError = true
                                             return
                                         }
                                         ServiceCall.post(parameter: ["email": txtEmail, "reset_code": txtResetCode ], path: Globs.SV_FORGOT_PASSWORD_VERIFY, isToken: false ) { responseObj in
                                             if let response = responseObj as? NSDictionary {
                                                 if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                                                     self.resetObj = response.value(forKey: KKey.payload) as? NSDictionary
                                                     self.showSetPassword = true
                                                 }else{
                                                     self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                                                     self.showError = true
                                                 }
                                             }
                                         } failure: { error in
                                             self.errorMessage = error?.localizedDescription ?? "Fail"
                                             self.showError = true
                                         }
                                     }
                                     
                                     func serviceCallSetPassword(){
                                         
                                         if(txtNewPassword.count < 6) {
                                             self.errorMessage = "Please enter new password minimum 6 character"
                                             self.showError = true
                                             return
                                         }
                                         
                                         if(txtNewPassword != txtConfirmPassword) {
                                             self.errorMessage = "password not match"
                                             self.showError = true
                                             return
                                         }
                                         
                                         
                                         ServiceCall.post(parameter: ["user_id": self.resetObj?.value(forKey: "user_id") ?? "", "reset_code":self.resetObj?.value(forKey: "reset_code") ?? "" , "new_password": txtNewPassword], path: Globs.SV_FORGOT_PASSWORD_SET_PASSWORD, isToken: false ) { responseObj in
                                             if let response = responseObj as? NSDictionary {
                                                 if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                                                     
                                                     self.txtEmail = ""
                                                     self.txtConfirmPassword = ""
                                                     self.txtNewPassword = ""
                                                     
                                                     self.showSetPassword = false
                                                     
                                                     self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Success"
                                                     self.showError = true
                                                     
                                                 }else{
                                                     self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                                                     self.showError = true
                                                 }
                                             }
                                         } failure: { error in
                                             self.errorMessage = error?.localizedDescription ?? "Fail"
                                             self.showError = true
                                         }
                                     }
                                     
                                     
                                 }
                                  */

                           Text(selectedProduct?.Description ?? "")
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
                        
                     //   PopularProductsSection2()
                        
                        VStack{
                            
                            
                            HStack(spacing: 16) {
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
