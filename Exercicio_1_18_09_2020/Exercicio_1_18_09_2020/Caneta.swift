//
//  Caneta.swift
//  Exercicio_1_18_09_2020
//
//  Created by Gustavo Schwarz on 20/09/20.
//

import Foundation

class Caneta {
    
    var marca: String
    
    init(marca: String) {
        self.marca = marca
    }
}

extension Caneta: FormatterProtocol {
    func getFullText() -> String {
        return "\(marca)"
    }
}
