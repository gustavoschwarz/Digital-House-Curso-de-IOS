import UIKit

// Exercícios da aula #: 09-09-2020
/*
- Definir uma classe Funcionario com atributos nome, salário e cpf
- Depois defina as classes Programador que tem plataforma de trabalho(ex: Android, Web, iOS)
E uma classe Designer que tem ferramenta preferida (ex: Photoshop, Sketch, Gimp).
- Ambos tem um bonus anual baseado no salário
   - Programador recebe 20% e
   - Designer recebe 15%,
- Faça um método que calcule o bonus anual e mostre o valor do bonus na tela.
- Use polimorfismo para resolver este problema.
*/

enum PlataformaDeTrabalho {
    case android
    case web
    case ios
}
enum FerramentaPreferida {
    case photoshop
    case sketch
    case gimp
}

class Funcionario {
    var nome: String
    var salario: Float
    var cpf: String
    
    init(nome: String, salario: Float, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func bonusAnual() -> Float {
        return salario
    }
}

class Programador: Funcionario {
    var plataformaDeTrabalho: PlataformaDeTrabalho
    
    init(nome: String, salario: Float, cpf: String, plataformaDeTrabalho: PlataformaDeTrabalho) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() -> Float {
        return super.bonusAnual() * 1.2
    }
}

class Designer: Funcionario {
    var ferramentaPreferida: FerramentaPreferida

    init(nome: String, salario: Float, cpf: String, ferramentaPreferida: FerramentaPreferida) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() -> Float {
        return super.bonusAnual() * 1.15
    }
}


var p = Programador(nome: "João", salario: 3000.0, cpf: "000.000.000-00", plataformaDeTrabalho: PlataformaDeTrabalho.android)

print(Int(p.bonusAnual()))

var d = Designer(nome: "Pedro", salario: 3000.0, cpf: "999.999.999-99", ferramentaPreferida: FerramentaPreferida.photoshop)

print(Int(d.bonusAnual()))

/*
- Definir uma classe Veículo com cor, preço e quantidade de passageiros
- Depois defina as classes Carro que tem tamanho das rodas e
- Avião que tem piloto e companhia aérea.
- Queremos descobrir a quantidade de combustível que cada um dos veículos gasta por viagem, defina um método que recebe como parâmetro a distancia em Km e calcule a quantidade de combustível.
- Carro: tamanho das rodas * quantidade de passageiros * distancia
- Avião:                     quantidade de passageiros * distancia
*/

class Veiculo {
    var cor: String
    var preco: Float
    var quantidadeDePassageiros: Int
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.quantidadeDePassageiros = quantidadeDePassageiros
    }
    
    func calculaCombustivel (distancia: Float) -> Float {
        return (Float(quantidadeDePassageiros) * distancia)
    }
}

class Carro: Veiculo {
    var tamanhoDasRodas: Float
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int, tamanhoDasRodas: Float) {
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calculaCombustivel(distancia: Float) -> Float {
        return (super.calculaCombustivel(distancia: distancia) * self.tamanhoDasRodas)
    }
}

class Aviao: Veiculo {
    var piloto: String
    var companhiaAerea: String
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int, piloto: String, companhiaAerea: String) {
        self.piloto = piloto
        self.companhiaAerea = companhiaAerea
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
}

var carro = Carro(cor: "Fusca", preco: 8000.00, quantidadeDePassageiros: 1, tamanhoDasRodas: 1)
print (carro.calculaCombustivel(distancia: 100))

var aviao = Aviao(cor: "F-AlgumaCoisa", preco: 3000000.00, quantidadeDePassageiros: 10, piloto: "João", companhiaAerea: "AxAirlines")
print (aviao.calculaCombustivel(distancia: 100))
