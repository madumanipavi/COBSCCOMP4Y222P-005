//
//  ProductCategoryDetailViewModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-29.
//

import Foundation
import SwiftUI
import Combine


class ProductCategoryDetailViewModel : ObservableObject {
    
    var compose = Set<AnyCancellable>()
    
    @Published var products : [Item] = []
    
//    init(for subcategory: String)
//    {
//        loadGetProduct(for: subcategory)
//    }
    
        init(for subcategory: String = "Dresses")
        {
            loadGetProduct(for: subcategory)
        }
    
    func loadGetProduct(for subcategory: String)
    {
//        let getApiUrlString = "https://cobsccomp4y222p-005-iosmongodbapi.onrender.com/products/subcategoryproducts/Dresses"
        //https://iosmongodbnewapi.onrender.com/api/products/category/name/Tops
        
//        let getApiUrlString = "https://iosmongodbnewapi.onrender.com/api/products/catogory/6610d04933fbc2ce23a100c6"
        
        let getApiUrlString = "https://iosmongodbnewapi.onrender.com/api/products/category/name/\(subcategory)"
        
        
       
        guard let getApiUrlString = URL(string: getApiUrlString) else {return}
        var getApiUrlRequest = URLRequest (url : getApiUrlString)
      
        //session
        
        let getApiUrlSession = URLSession(configuration: .default)
        getApiUrlSession.dataTaskPublisher(for: getApiUrlRequest)
            .map(\.data)
            .retry(3)
            .decode(type: ProductCategortDetailModel.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
            .receive(on: DispatchQueue.main)
            .sink{ res in
            }
    receiveValue: {model in
        guard let productArray = model.Products else { return}
        self.products = productArray
    }
    .store(in: &compose)
        
        
    }
        
    }

