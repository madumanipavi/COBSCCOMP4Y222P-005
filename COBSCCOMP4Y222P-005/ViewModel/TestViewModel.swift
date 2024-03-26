//
//  TestViewModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM on 2024-03-26.
//

import Foundation
import SwiftUI
import Combine


class TestViewModel : ObservableObject {
    
    var compose = Set<AnyCancellable>()
    
    @Published var products : [Items] = []
    
    init()
    {
        loadGetProduct()
    }
    
    func loadGetProduct()
    {
        let getApiUrlString = "https://ioswebapi-1.azurewebsites.net/"
        guard let getApiUrlString = URL(string: getApiUrlString) else {return}
        var getApiUrlRequest = URLRequest (url : getApiUrlString)
        //session
        let getApiUrlSession = URLSession(configuration: .default)
        getApiUrlSession.dataTaskPublisher(for: getApiUrlRequest)
            .map(\.data)
            .retry(3)
            .decode(type: TestModel.self, decoder: JSONDecoder())
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







