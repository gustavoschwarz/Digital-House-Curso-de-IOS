//
//  PessoaFisica.swift
//  Exercicio_1_18_09_2020
//
//  Created by Gustavo Schwarz on 20/09/20.
//

import Foundation

class PessoaFisica: Individuo {
    
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        super.init(nome: nome)
    }
}

extension PessoaFisica: FormatterProtocol {
    func getFullText() -> String {
        return "\(nome) \(cpf)"
    }
}
