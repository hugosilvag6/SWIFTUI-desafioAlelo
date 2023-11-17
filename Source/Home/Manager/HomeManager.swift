//
//  HomeManager.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import Foundation

protocol HomeManagerProtocol {
    func getProductList(completion: @escaping (Result<ProductList, Error>) -> Void)
}

class HomeManager: HomeManagerProtocol {
    let webservice: WebServiceProtocol
    
    init(webservice: WebServiceProtocol = Webservice()) {
        self.webservice = webservice
    }
    
    func getProductList(completion: @escaping (Result<ProductList, Error>) -> Void) {
        Webservice.getProducts(url: AppConstants.Urls.productList, completion: completion)
    }
}
