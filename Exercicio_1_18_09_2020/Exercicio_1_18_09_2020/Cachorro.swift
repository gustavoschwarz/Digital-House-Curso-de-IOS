//
//  Cachorro.swift
//  Exercicio_1_18_09_2020
//
//  Created by Gustavo Schwarz on 20/09/20.
//

import Foundation

class Cachorro: Individuo {
    
    var raca: String
    
    init(nome: String, raca: String) {
        self.raca = raca
        super.init(nome: nome)
    }
}

extension Cachorro: FormatterProtocol {
    func getFullText() -> String {
        return "\(nome) \(raca)"
    }
}
