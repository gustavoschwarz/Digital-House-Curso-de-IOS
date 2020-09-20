//
//  Aviao.swift
//  Exercicio_1_18_09_2020
//
//  Created by Gustavo Schwarz on 20/09/20.
//

import Foundation

class Aviao {
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
    }
}

extension Aviao: FormatterProtocol {
    func getFullText() -> String {
        return "\(modelo) \(cidade)"
    }
}
