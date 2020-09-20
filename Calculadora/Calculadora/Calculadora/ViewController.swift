//
//  ViewController.swift
//  Calculadora
//
//  Created by Gustavo Schwarz on 11/09/20.
//  Copyright © 2020 Gustavo Schwarz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var operacao: String = "";
    var operador: String = "";
    
    @IBOutlet weak var labelUltimasOperacoes: UILabel!
    @IBOutlet weak var labelResultado: UILabel!
    
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonUm: UIButton!
    @IBOutlet weak var buttonDois: UIButton!
    @IBOutlet weak var buttonTres: UIButton!
    @IBOutlet weak var buttonQuatro: UIButton!
    @IBOutlet weak var buttonCinco: UIButton!
    @IBOutlet weak var buttonSeis: UIButton!
    @IBOutlet weak var buttonSete: UIButton!
    @IBOutlet weak var buttonOito: UIButton!
    @IBOutlet weak var buttonNove: UIButton!
    @IBOutlet weak var buttonVirgula: UIButton!
    
    @IBOutlet weak var buttonDivisao: UIButton!
    @IBOutlet weak var buttonMultiplicacao: UIButton!
    @IBOutlet weak var buttonSubtracao: UIButton!
    @IBOutlet weak var buttonAdicao: UIButton!
    @IBOutlet weak var buttonResultado: UIButton!
    
    @IBOutlet weak var buttonLimpezaDeCampos: UIButton!
    @IBOutlet weak var buttonMaisOuMenos: UIButton!
    @IBOutlet weak var buttonModulo: UIButton!

    var isClickedOnOperation = false
    
    @IBAction func buttonZero(_ sender: Any) {
        operacao += "0"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonUm(_ sender: Any) {
        operacao += "1"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonDois(_ sender: Any) {
        operacao += "2"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonTres(_ sender: Any) {
        operacao += "3"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonQuatro(_ sender: Any) {
        operacao += "4"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonCinco(_ sender: Any) {
        operacao += "5"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonSeis(_ sender: Any) {
        operacao += "6"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonSete(_ sender: Any) {
        operacao += "7"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonOito(_ sender: Any) {
        operacao += "8"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonNove(_ sender: Any) {
        operacao += "9"
        labelUltimasOperacoes.text = operacao
        isClickedOnOperation = false
    }
    
    @IBAction func buttonAdicao(_ sender: Any) {
        if isClickedOnOperation == false {
            operacao += "+"
        }
        isClickedOnOperation = true
        labelUltimasOperacoes.text = operacao
    }
    
    
    @IBAction func actionButtonIgual(_ sender: Any) {
        if let texto = labelUltimasOperacoes.text {
            let stringWithMathematicalOperation: String = texto
            let exp: NSExpression = NSExpression(format: stringWithMathematicalOperation)
            let result: Double = exp.expressionValue(with:nil, context: nil) as! Double
            print (result)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

