//
//  WebserviceErrors.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import Foundation

enum WebserviceErrors: LocalizedError {
    case invalidUrl, badRequest, decodingError
    
    var errorDescription: String? {
        switch self {
        case .invalidUrl: return "URL inválida."
        case .badRequest: return "Falha na requisição."
        case .decodingError: return "Erro ao decodificar JSON."
        }
    }
}
