//
//  ProductCategortDetailModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-29.
//

import Foundation



struct ProductCategortDetailModel: Codable {
  
    let Products : [Item]?
    
}

struct Item:Codable {
    
    let _id: String
    let id: Int
    let Product_name: String
    let Subcategory_Id: String
    let Price: Double
    let Description: String
    let Image_url: String
    let __v : Int
    
   
}


