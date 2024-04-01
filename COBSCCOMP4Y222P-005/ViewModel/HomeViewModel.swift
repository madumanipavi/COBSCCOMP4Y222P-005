//
//  HomeViewModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC15 on 2024-03-31.
//

import Foundation
import Foundation
import SwiftUI
import Combine


class HomeViewModel : ObservableObject {
    
    var compose = Set<AnyCancellable>()
    
    @Published var products : [Item] = []
    
    init()
    {
        loadGetProduct()
    }
    
    func loadGetProduct()
    {
        let getApiUrlString = "https://cobsccomp4y222p-005-iosmongodbapi.onrender.com/products/"
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
