//Defina o método Voar nesse protocolo, com a seguinte assinatura:
//    func voar() -> Void
//Depois, crie as seguintes classes: Pato, Avião, Super-Homem.
//Faça cada uma implementar o protocolo Voador e definir o comportamento do método Voar em cada caso:
//    - Pato: o pato tem uma energia. Cada vez que voa, ele perde 5 unidades de energia e é exibida na tela a frase “Estou voando como um pato”
//    - Avião: o avião tem horas de voo. Cada vez que o avião voa, soma 13h de voo e é exibida na tela a frase “Estou voando como um avião”
//    - Super-Homem: o Super-Homem tem experiência. Cada vez que o Super-Homem voa, a experiência dele aumenta 3 unidades, e é exibida na tela a frase “Estou voando como um campeão”
//Crie uma classe TorreDeControle que contenha uma lista de voadores inicializada sem elementos.
//Depois, crie dois métodos na classe TorreDeControle:
//    - public func voamTodos() -> Void
//    Esse método será encarregado de percorrer a lista de voadores e fazer com que eles voem.
//    - public func adicionarVoador(umVoador: Voaador) -> Void
//    Esse método será encarregado de adicionar um voador à lista de voadores.
//Crie um programa (Playground) e use-o para criar:
//    - um pato
//    - um avião
//    - o Super-Homem
//    - uma torre de controle
//Adicione o pato, o avião e o Super-Homem à torre de controle.
//Peça para a torre de controle fazer todos os voadores voarem.
//Observe o comportamento.

import UIKit

protocol Voador {
    func voar() -> Void
}

class Pato: Voador {
    var energia: Int
    
    init(energia: Int) {
        self.energia = energia
    }
    
    func voar() {
        self.energia -= 5
        print("Estou voando como um pato")
    }

}

class Aviao: Voador {
    var horasDeVoo: Int
    
    init(horasDeVoo: Int) {
        self.horasDeVoo = horasDeVoo
    }
    
    func voar() {
        self.horasDeVoo += 13
        print("Estou voando como um avião")
    }
}

class SuperHomem: Voador {
    var experiencia: Int
    
    init(experiencia: Int) {
        self.experiencia = experiencia
    }
    
    func voar() {
        self.experiencia += 3
        print("Estou voando como um campeão")
    }
}

class TorreDeControle {
    private var listaDeVoadores = [Voador]()
    
    public func voamTodos() -> Void {
        for voador in listaDeVoadores {
            voador.voar()
        }
    }
    
    public func adicionarVoador(umVoador: Voador) -> Void {
        self.listaDeVoadores.append(umVoador)
    }
}

let umPato = Pato(energia: 100)
let umAviao = Aviao(horasDeVoo: 100)
let umSuperHomem = SuperHomem(experiencia: 100)
let umaTorreDeControle = TorreDeControle()

umaTorreDeControle.adicionarVoador(umVoador: umPato)
umaTorreDeControle.adicionarVoador(umVoador: umAviao)
umaTorreDeControle.adicionarVoador(umVoador: umSuperHomem)
umaTorreDeControle.voamTodos()

