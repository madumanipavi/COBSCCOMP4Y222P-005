//
//  TestModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-26.
//

import Foundation


struct TestModel: Codable {
    let Products : [Items]?
}

struct Items:Codable {
    let _id: String
    let id: Int
    let Product_name: String
    let Subcategory_Id: String
    let Price: Int
    let Description: String
    let Image_url: String
    let __v : Int
    
    
    
}
