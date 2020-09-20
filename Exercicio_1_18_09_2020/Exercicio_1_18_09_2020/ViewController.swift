//
//  ViewController.swift
//  Exercicio_1_18_09_2020
//
//  Created by Gustavo Schwarz on 20/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBarPesquisa: UISearchBar!
    @IBOutlet weak var labelProdutosEncontrados: UILabel!
    
    var produtosLista = [FormatterProtocol]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // A searchBar Delega para a ViewControler
        searchBarPesquisa.delegate = self
        labelProdutosEncontrados.numberOfLines = 0
        labelProdutosEncontrados.lineBreakMode = .byWordWrapping
        
        produtosLista.append(Aviao(modelo: "AirBus0", cidade: "São Paulo"))
        produtosLista.append(PessoaFisica(nome: "João", cpf: "000.000.000-00"))
        produtosLista.append(PessoaJuridica(nome: "Empresa", cnpj: "00.000.000"))
        produtosLista.append(Cachorro(nome: "Rex", raca: "Pastor Alemão"))
        produtosLista.append(Caneta(marca: "Bic0"))
    }
    
    private func buscaProduto(textoBusca: String) {
        var itensEncontrados = [FormatterProtocol]()
        for item in produtosLista {
            if item.getFullText().lowercased().contains(textoBusca.lowercased()) {
                itensEncontrados.append(item)
            }
        }
        mostraProdutos(itens: itensEncontrados)
    }
    
    private func mostraProdutos(itens: [FormatterProtocol]) {
        var output = ""
        for item in itens {
            output += item.getFullText() + "\n"
        }
        labelProdutosEncontrados.text = output
        print (output)
    }
    
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let searchText = searchBarPesquisa.text {
            buscaProduto(textoBusca: searchText)
        }
    }
}
