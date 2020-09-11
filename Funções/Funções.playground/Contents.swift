import UIKit

//Definir três métodos que imprimam saudações diferentes em tela e sejam executados da seguinte forma:
// - cumprimentarA(pessoa: "João")
// - cumprimentar(a: "João")
// - cumprimentarA("João")

func cumprimentarA(pessoa: String){print (pessoa)}
func cumprimentar(a: String){print(a)}
func cumprimentarA(_ a: String){print (a)}
cumprimentarA(pessoa: "João")
cumprimentar(a: "João")
cumprimentarA("João")

//- Escrever o método eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool deve usar dois números inteiros como parâmetros e retornar true se o primeiro número for menor que o segundo número ou false , caso contrário.
//- Invocar o método com os números 3 e 5 e imprimir na tela o resultado.
//- Invocar o método com os números 7 e 5 e imprimir na tela o resultado.
//- Invocar o método com os números 10 e 10; e imprimir na tela o resultado.

func eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool {
    if (oPrimeiro < oSegundo) {return true}
    else {return false}
}

print ("3 é menor que 5? " +  String(eMenor(oPrimeiro: 3, oSegundo: 5)))
print ("7 é menor que 5? " +  String(eMenor(oPrimeiro: 7, oSegundo: 5)))
print ("10 é menor que 10? " +  String(eMenor(oPrimeiro: 10, oSegundo: 10)))

//- Escrever o método eImparMaiorQueDez(umNumero: Int) -> Bool que deve analisar um número inteiro como parâmetro e retornar true se o número for ímpar e maior do que dez e false, caso contrário.
//- Invocar o método com o número 3 e imprimir na tela o resultado.
//- Invocar o método com o número 4 e imprimir na tela o resultado.
//- Invocar o método com o número 13 e imprimir na tela o resultado. • Invocar o método com o número 14 e imprimir na tela o resultado.
//- Ajuda: o operador % calcula o resto da divisão entre dois números inteiros. (Ex.: “5 % 2” dá 1 como resultado; enquanto “4 % 2” dá 0 como resultado).

func eImparMaiorQueDez(umNumero: Int) -> Bool {
    if (umNumero > 10 && umNumero % 2 == 1) {
        return true
    } else {
        return false
    }
}
print ("3 é ímpar e maior que dez? " + String(eImparMaiorQueDez(umNumero: 3)))
print ("13 é ímpar e maior que dez? " + String(eImparMaiorQueDez(umNumero: 13)))
print ("4 é ímpar e maior que dez? " + String(eImparMaiorQueDez(umNumero: 4)))
print ("4 é ímpar e maior que dez? " + String(eImparMaiorQueDez(umNumero: 14)))


//- Imprima na tela a soma dos primeiros dez números naturais ÍMPARES elevados ao quadrado
func imprimeOsDezImparesAoQuadradoAPartirDo(numero: Int) {
    var count: Int = 0
    var sum: Int = 0
    var localNum: Int = numero
    
    while (count < 10) {
        if (localNum % 2 == 1) {
            sum += (localNum * localNum)
            count += 1
            print("\(count). \(localNum)")
        }
        localNum += 1
    }
    print("Soma: \(sum)")
}

imprimeOsDezImparesAoQuadradoAPartirDo(numero: 3)
//imprimeOsDezImparesAoQuadradoAPartirDo(numero: 1)
//imprimeOsDezImparesAoQuadradoAPartirDo(numero: 2)


//- Imprimir números aleatórios entre 0 e 5, até que se imprima um 3. Ajuda: A função arc4random_uniform(_ n: Int) (definida na biblioteca Faundation) retorna um número aleatório entre 0 e o parâmetro, exemplo.
//var numero = arc4random_uniform(5)

var numero: Int
var count: Int = 1

repeat {
    numero = Int(arc4random_uniform(5))
    print("\(count). \(numero)")
    count += 1
} while (numero != 3)

//Fazer um cálculo de IMC
//O índice é calculado da seguinte maneira: divide-se o peso do paciente pela sua altura elevada ao quadrado. Diz-se que o indivíduo tem peso normal quando o resultado do IMC está entre 18,5 e 24,9.

var pesoEmQuilogramas: Float
var alturaEmMetros: Float
var imc: Float

pesoEmQuilogramas = 75.5
alturaEmMetros = 1.85

imc = pesoEmQuilogramas / (alturaEmMetros * alturaEmMetros)

print ("Seu índice de massa corportal é: \(imc)")
