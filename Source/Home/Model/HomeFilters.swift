//
//  HomeFilters.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import Foundation

enum HomeFilters: CaseIterable {
    case all, onSale
    
    var text: String {
        switch self {
        case .all: return "todos"
        case .onSale: return "promoção"
        }
    }
}
