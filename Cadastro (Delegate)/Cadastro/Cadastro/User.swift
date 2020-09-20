//
//  User.swift
//  Cadastro
//
//  Created by Gustavo Schwarz on 16/09/20.
//  Copyright © 2020 Gustavo Schwarz. All rights reserved.
//

import Foundation

class User {
    public var email: String
    public var senha: String
    
    init(email: String, senha: String) {
        self.email = email
        self.senha = senha
    }
}

