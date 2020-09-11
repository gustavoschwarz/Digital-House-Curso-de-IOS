import UIKit

//- Modelagem de um app de Supermercado
//- Esta atividade consiste em desenvolver uma modelagem de um aplicativo de supermercado em swift no ​playground​.
//- Criem um repositório git com o nome "modelagemCalculadora".
//- Requisitos Mínimos:
//   - 3 classes;
//   - 6 atributos para cada classe;
//   - 5 métodos;
//   - 1 aplicação de Herança;

class Produto {
    // 6 atributos
    var nome: String
    var dataFabricacao: String
    var validade: String
    var fabricante: String
    var lote: String
    var preco: Float
    
    init(nome: String, dataFabricacao: String, validade: String, fabricante: String, lote: String, preco: Float) {
        self.nome = nome
        self.dataFabricacao = dataFabricacao
        self.validade = validade
        self.fabricante = fabricante
        self.lote = lote
        self.preco = preco
    }
    
    func imprimeDescricaoCompleta() {
       print ("O produto \(nome) é fabricado pela \(fabricante) e seu preço atualmente é de \(preco)")
    }

    func getPreco() -> Float{
        return self.preco
    }

    func produtoEstaNoLoteIndicado(lote: String) -> Bool{
        if (self.lote == lote) {
            return true
        } else {
            return false
        }
        
    }
}

class Bebida: Produto {
    // 6 atributos
    var teorDeAlcool: Float
    var contemGlutem: Bool
    var quantidadeEmMililitros: Float
    var conservarGelada: Bool
    var tipo: String
    var informacaoAdicional: String
    
    init(nome: String, dataFabricacao: String, validade: String, fabricante: String, lote: String, preco: Float, teorDeAlcool: Float, contemGlutem: Bool, quantidadeEmMililitros: Float, conservarGelada: Bool, tipo: String, informacaoAdicional: String) {
        self.teorDeAlcool = teorDeAlcool
        self.contemGlutem = contemGlutem
        self.quantidadeEmMililitros = quantidadeEmMililitros
        self.conservarGelada = conservarGelada
        self.tipo = tipo
        self.informacaoAdicional = informacaoAdicional
        
        super.init(nome: nome, dataFabricacao: dataFabricacao, validade: validade, fabricante: fabricante, lote: lote, preco: preco)
    }
    
    func ePermitidoParaMenoresDeIdade() -> Bool {
        if(self.teorDeAlcool > 0) {
            return false
        } else {
            return true
        }
        
    }
    
    func podeSerConsumidoPorQuemTemDoencaSeliaca() -> Bool {
        if(self.contemGlutem) {
            return false
        } else {
            return true
        }
    }
}

class CarrinhoDeCompras {
    var codigoCliente: String
    var nomeCliente: String
    var cpfCliente: String
    var quantidadeDeItens: Int
    var valorTotal: Float
    var produtos = [Bebida]()
    
    init(codigoCliente: String, nomeCliente: String, cpfCliente: String, quantidadeDeItens: Int, valorTotal: Float, produtos: [Bebida]) {
        self.codigoCliente = codigoCliente
        self.nomeCliente = nomeCliente
        self.cpfCliente = cpfCliente
        self.quantidadeDeItens = quantidadeDeItens
        self.valorTotal = valorTotal
        self.produtos = produtos
    }
    
    func setValorTotal() {
        for produto in self.produtos {
            self.valorTotal += produto.preco
        }
        print ("O preço total do seu carrinho é: \(self.valorTotal)")
    }
    
    func mostraItensDoCarrinho() {
        print("Os produtos no seu carrinho são: ")
        for produto in self.produtos {
            print(produto.nome)
        }
    }
}

var prod = [Bebida]()

let guaranaXYZ = Bebida(nome: "Guarana XYZ", dataFabricacao: "10-10-2010", validade: "10-10-2012", fabricante: "Guaranás SA", lote: "ABC-123", preco: 3.00, teorDeAlcool: 0, contemGlutem: false, quantidadeEmMililitros: 600.0, conservarGelada: true, tipo: "Zero", informacaoAdicional: "")

let cervejaABC = Bebida(nome: "Cerveja ABC", dataFabricacao: "10-10-2010", validade: "10-10-2012", fabricante: "Cervejaria do norte", lote: "XXX-333", preco: 10.55, teorDeAlcool: 4.0, contemGlutem: true, quantidadeEmMililitros: 1000.0, conservarGelada: true, tipo: "Premium", informacaoAdicional: "Cerveja feita com produtos importados.")

let vinhoNH2 = Bebida(nome: "Vinho NH2", dataFabricacao: "10-10-2010", validade: "10-10-2012", fabricante: "Vinícola NH2", lote: "RRR-HHH-333", preco: 20.00, teorDeAlcool: 10, contemGlutem: false, quantidadeEmMililitros: 800.0, conservarGelada: false, tipo: "Seco", informacaoAdicional: "Vinho da safra de 2010")

prod.append(guaranaXYZ)
prod.append(cervejaABC)
prod.append(vinhoNH2)

let meuCarrinho = CarrinhoDeCompras(codigoCliente: "1", nomeCliente: "João", cpfCliente: "012.345.678-90", quantidadeDeItens: 0, valorTotal: 0, produtos: prod)

meuCarrinho.mostraItensDoCarrinho()
meuCarrinho.setValorTotal()
