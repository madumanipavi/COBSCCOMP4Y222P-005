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
    let name : String
    let category : String
    let price : Double
    let color : String
    let description : String
    let stock_quantity : Int
    let Image : String
    let id: Int
    
    
    
}
