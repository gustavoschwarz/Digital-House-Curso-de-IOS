//
//  ViewController.swift
//  Cadastro
//
//  Created by Gustavo Schwarz on 15/09/20.
//  Copyright © 2020 Gustavo Schwarz. All rights reserved.
//

//Fazer um app que tenha a classe usuário
//Que possa trabalhar com email e senha
//E a primeira vez que o usuário inserir o email e senha devemos habilitar o botão de cadastro
//Ao clicar em cadastrar devemos limpar os campos
//Ao inserir os dados pela segunda vez, devemos validar se o usuário já foi previamente cadastrado, se sim, pintamos a tela de vermelho, se não, pintamos de verde.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    @IBOutlet weak var buttonCadastrar: UIButton!
    
    var usersList = [User]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldEmail.delegate = self
        textFieldSenha.delegate = self
    }

    @IBAction func actionButtonCadastrar(_ sender: Any) {
    }
    
    private func showButtonCadastrar() {
        if (textFieldEmail != nil && textFieldSenha != nil) {
            buttonCadastrar.isHidden = false
        }
    }
    
    private func clearFiels() {
        textFieldEmail.text = ""
        textFieldSenha.text = ""
    }
    
    private func isUserExists(userArg: User) -> Bool {
        for user in usersList {
            if user.email.lowercased() == userArg.email.lowercased() {
                return true
            }
        }
        return false
    }
}

extension ViewController: UITextFieldDelegate {
    // Quando clicar no botão "Enter" do keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case textFieldEmail: // Se clicado no Enter do textField Email
            // Então vai (focus) no textFieldSenha
            textFieldSenha.becomeFirstResponder()
            break
        case textFieldSenha: // Se clicado no Enter do textField Senha
            // Então esconde o teclado
            textFieldSenha.resignFirstResponder()
            break
        default:
            break
        }
        return true
    }
    
    
}
