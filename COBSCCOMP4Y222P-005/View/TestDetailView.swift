//
//  TestDetailView.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-30.
//

import SwiftUI

struct TestDetailView: View {
    
    var selectedProduct : Items?
    var body: some View {
        ZStack{
            
            
            VStack{
                
                Text("Name")
                Text(selectedProduct?.Product_name ?? "").bold()
                
                
            }
        }
    }
}

#Preview {
    TestDetailView()
}
