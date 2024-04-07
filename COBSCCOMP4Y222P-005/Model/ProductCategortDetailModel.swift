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
    let subcategoryID:String
    let Product_name: String
    let id: Int
    let Description:String
    let Image_url: String
    let Price: Double
    let Availability:Int
    let Tags:[String]
    let availablesize:[String]
    let availablecolor:[String]
    let __v : Int
    
    


}


