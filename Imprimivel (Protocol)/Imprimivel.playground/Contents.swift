//Crie um protocolo chamado Imprimível.
//Defina o método Imprimir neste protocolo, com a seguinte assinatura:
//    func imprimir() -> Void
//Depois, crie as seguintes classes: Contrato, Foto e Documento.
//    Faça cada uma implementar o protocolo Imprimível e defina o comportamento do método Imprimir em cada uma delas:
//    - Contrato: imprima na tela “Sou um contrato muito legal”
//    - Foto: imprima na tela “Sou uma selfie”
//    - Documento: “Sou um documento do Word”.
//Crie uma classe Impressora que contenha uma lista de imprimíveis inicializada sem elementos.
//    Depois, crie dois métodos na classe impressora:
//    - public func imprimirTudo() -> Void
//    Esse método será encarregado de percorrer a lista de imprimíveis e fazer a impressão.
//    - public func agregarImprimível(umImprimível: Imprimible) -> Void
//    Esse método será encarregado de adicionar um imprimível à lista da impressora.
//Crie um programa (Playground) e use-o para criar:
//    - um contrato
//    - uma foto
//    - um documento
//    - uma impressora
//Adicione o contrato, a foto e o documento à impressora.
//Peça para a impressora imprimir tudo.
//Observe o comportamento.

import UIKit

protocol Imprimivel {
    func imprimir() -> Void
}

class Contrato: Imprimivel{
    func imprimir() {
        print("Sou um contrato muito legal")
    }
}

class Foto: Imprimivel {
    func imprimir() {
        print("Sou uma selfie")
    }
}

class Documento: Imprimivel {
    func imprimir() {
        print("Sou um documento do Word")
    }
}

class Impressora {
    private var arquivos = [Imprimivel]()
    
    public func imprimeTudo() -> Void {
        for arquivo in arquivos {
            arquivo.imprimir()
        }
    }
    public func agregaImprimivel(umImprimivel: Imprimivel) -> Void {
        arquivos.append(umImprimivel);
    }
}

let umContrato = Contrato()
let umaFoto = Foto()
let umDocumento = Documento()
let umaImpressora = Impressora()

umaImpressora.agregaImprimivel(umImprimivel: umContrato)
umaImpressora.agregaImprimivel(umImprimivel: umaFoto)
umaImpressora.agregaImprimivel(umImprimivel: umDocumento)

umaImpressora.imprimeTudo()
