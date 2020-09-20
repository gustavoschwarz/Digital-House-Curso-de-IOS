//
//  PessoaJuridica.swift
//  Exercicio_1_18_09_2020
//
//  Created by Gustavo Schwarz on 20/09/20.
//

import Foundation

class PessoaJuridica: Individuo {
    
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}

extension PessoaJuridica: FormatterProtocol {
    func getFullText() -> String {
        return "\(nome) \(cnpj)"
    }
}
