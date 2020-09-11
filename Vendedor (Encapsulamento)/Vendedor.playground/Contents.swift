import UIKit

//- Um vendedor de loja e possui nome, idade e cpf, saldo em conta
//    - vende em sua loja ternos, vestidos e bonés
//    - definir um método vender (quantidadeDePecas: Int, tipoDePeca: String).
//- Cada terno custa 400 reais,
//   - caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
//- Cada vestido custa 900 reais,
//   - caso o cliente compre 5 vestidos ele ganha um véu de noiva (que custa 250 reais) de brinde.
//- Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro.
//- Encapsule todos os métodos necessários.
//- O vendedor é o dono da loja

class Terno {
    private var preco: Float = 400.00
    public func getPreco() -> Float {
        return self.preco
    }
}

class Vestido {
    private var preco: Float = 900.00
    public func getPreco() -> Float {
        return self.preco
    }
}

class Bone {
    private var preco: Float = 50.00
    public func getPreco() -> Float {
        return self.preco
    }
}

class Vendedor {
    public var nome: String
    public var idade: Int
    public var cpf: String
    private var saldoEmConta: Float
    
    init (nome: String, idade: Int, cpf: String, saldoEmConta: Float) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    private func setSaldo(valor: Float) {
        if (valor >= 0) {
            self.saldoEmConta = valor
        }
    }
    public func getSaldo() -> Float {
        return self.saldoEmConta
    }
    
    // Se o cliente comprar 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
    public func vender(quantidadeDePecas: Int, produto: Terno) {
        let valorDesconto = Float(quantidadeDePecas * 50)
        let quatnatidadeElegiveisDesconto = 3
        
        if (quantidadeDePecas >= quatnatidadeElegiveisDesconto) {
            self.setSaldo(valor: Float(produto.getPreco() * Float(quantidadeDePecas) - valorDesconto) + saldoEmConta)
        } else {
            self.setSaldo(valor: Float(produto.getPreco() * Float(quantidadeDePecas)) + saldoEmConta)
        }
    }
    
    // Se o cliente comprar 5 vestidos ele ganha um véu de noiva (que custa 250 reais) de brinde.
    public func vender(quantidadeDePecas: Int, produto: Vestido) {
        let valorDesconto = Float(quantidadeDePecas * 50)
        let quatnatidadeElegiveisDesconto = 5
        
        if (quantidadeDePecas >= quatnatidadeElegiveisDesconto) {
           self.setSaldo(valor: Float(produto.getPreco() * Float(quantidadeDePecas) - valorDesconto) + saldoEmConta)
        } else {
           self.setSaldo(valor: Float(produto.getPreco() * Float(quantidadeDePecas)) + saldoEmConta)
       }
    }

    // Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro.
    public func vender(quantidadeDePecas: Int, produto: Bone) {
        let montante = Float(quantidadeDePecas-quantidadeDePecas/2)
        self.setSaldo(valor: montante * produto.getPreco() + saldoEmConta)
    }
}

var terno = Terno()
var vestido = Vestido()
var bone = Bone()

print("**************** VENDEDOR JOÃO ****************")
let joao = Vendedor(nome: "João", idade: 20, cpf: "222.222.222-22", saldoEmConta: 0)
print("O vendedor João começou com 0 saldo em conta.")
print("\(joao.nome) tem um saldo de: \(joao.getSaldo())")

joao.vender(quantidadeDePecas: 3, produto: terno)
print("O vendedor João vendeu 3 termos e ficou com saldo de 1050.")
print("\(joao.nome) tem um saldo de: \(joao.getSaldo())")

joao.vender(quantidadeDePecas: 1, produto: terno)
print("O vendedor João vendeu 1 terno e ficou com saldo de 1450.")
print("\(joao.nome) tem um saldo de: \(joao.getSaldo())")

print("\n**************** VENDEDOR MARCELO ****************")
let marcelo = Vendedor(nome: "Marcelo", idade: 30, cpf: "333.33.333-33", saldoEmConta: 0)
print("O vendedor Marcelo começou com 0 saldo em conta.")
print("\(marcelo.nome) tem um saldo de: \(marcelo.getSaldo())")

marcelo.vender(quantidadeDePecas: 5, produto: vestido)
print("O vendedor Marcelo vendeu 5 vestidos e ficou com saldo de 4250.")
print("\(marcelo.nome) tem um saldo de: \(marcelo.getSaldo())")

marcelo.vender(quantidadeDePecas: 1, produto: vestido)
print("O vendedor Marcelo vendeu 1 vestido e ficou com saldo de 5150.")
print("\(marcelo.nome) tem um saldo de: \(marcelo.getSaldo())")

print("\n**************** VENDEDOR MARCOS ****************")
let marcos = Vendedor(nome: "Marcos", idade: 40, cpf: "444.444.444-44", saldoEmConta: 0)
print("O vendedor Marcos começou com 0 saldo em conta.")
print("\(marcos.nome) tem um saldo de: \(marcos.getSaldo())")

marcos.vender(quantidadeDePecas: 3, produto: bone)
print("O vendedor Marcos vendeu 3 bonés e ficou com saldo de 100, ou seja, vendeu 3 bonés e deu 1 de brinde")
print("\(marcos.nome) tem um saldo de: \(marcos.getSaldo())")

print("\n**************** VENDEDOR JORGE ****************")
let jorge = Vendedor(nome: "Jorge", idade: 50, cpf: "555.555.555-55", saldoEmConta: 0)
print("O vendedor Jorge começou com 0 saldo em conta.")
print("\(jorge.nome) tem um saldo de: \(jorge.getSaldo())")

jorge.vender(quantidadeDePecas: 2, produto: bone)
print("O vendedor Jorge vendeu 2 bonés e ficou com saldo de 50, ou seja, vendeu 2 e deu 1 de brinde")
print("\(jorge.nome) tem um saldo de: \(jorge.getSaldo())")

print("\n**************** VENDEDOR ULISSES ****************")
let ulisses = Vendedor(nome: "Ulisses", idade: 60, cpf: "666.666.666-66", saldoEmConta: 0)
print("O vendedor Ulisses começou com 0 saldo em conta.")
print("\(ulisses.nome) tem um saldo de: \(ulisses.getSaldo())")

ulisses.vender(quantidadeDePecas: 6, produto: bone)
print("O vendedor Ulisses vendeu 6 bonés e ficou com saldo de 150, ou seja, vendeu 6 e deu 3 de brinde")
print("\(ulisses.nome) tem um saldo de: \(ulisses.getSaldo())")
