//
//  Webservice.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import Foundation

protocol WebServiceProtocol {
    static func getProducts(url: AppConstants.Urls, completion: @escaping (Result<ProductList, Error>) -> Void)
}

class Webservice: WebServiceProtocol {
    static func getProducts(url: AppConstants.Urls, completion: @escaping (Result<ProductList, Error>) -> Void) {
        guard let url = URL(string: url.rawValue) else {
            completion(.failure(WebserviceErrors.invalidUrl))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data else {
                completion(.failure(WebserviceErrors.badRequest))
                return
            }
            guard let list = try? JSONDecoder().decode(ProductList.self, from: data) else {
                completion(.failure(WebserviceErrors.badRequest))
                return
            }
            completion(.success(list))
        }.resume()
    }
}
