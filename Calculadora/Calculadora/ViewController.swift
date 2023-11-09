//
//  ViewController.swift
//  Calculadora
//
//  Created by luser on 11/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var firstWarningLabel: UILabel!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var secondWarningLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var num1: Double = 0
    var num2: Double = 0
    var result: Double = 0
    let resultStringDefault = "Resultado"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func sumButtonClicked(_ sender: Any) {
        var valido: Bool
        (valido, num1, num2) = validarObtenerNumeros(num1S: firstText.text!, num2S: secondText.text!)
        
        if valido {
            let result = num1 + num2
            resultLabel.text = String(format: "%.2f", result)
        }
        else {
            resultLabel.text = resultStringDefault
        }
    }
    
    @IBAction func minusButtonClicked(_ sender: Any) {
        var valido: Bool
        (valido, num1, num2) = validarObtenerNumeros(num1S: firstText.text!, num2S: secondText.text!)
        
        if valido {
            let result = num1 - num2
            resultLabel.text = String(format: "%.2f", result)
        }
        else {
            resultLabel.text = resultStringDefault
        }
    }
    
    @IBAction func multiplyButtonClicked(_ sender: Any) {
        var valido: Bool
        (valido, num1, num2) = validarObtenerNumeros(num1S: firstText.text!, num2S: secondText.text!)
        
        if valido {
            let result = num1 * num2
            resultLabel.text = String(format: "%.2f", result)
        }
        else {
            resultLabel.text = resultStringDefault
        }
    }
    
    @IBAction func divideButtonClicked(_ sender: Any) {
        var valido: Bool
        (valido, num1, num2) = validarObtenerNumeros(num1S: firstText.text!, num2S: secondText.text!)
        
        if valido {
            let result = num1 / num2
            resultLabel.text = String(format: "%.2f", result)
        }
        else {
            resultLabel.text = resultStringDefault
        }
    }

    
    func validarObtenerNumeros(num1S: String, num2S: String) -> (Bool, Double, Double) {
        let warning = "Inserte un número válido"
        
        if let num1 = Double(num1S) {
            if let num2 = Double(num2S) {
                firstWarningLabel.text = nil
                secondWarningLabel.text = nil
                return (true, num1, num2)
            }
            else {
                secondWarningLabel.text = warning
                return (false, -1, -1)
            }
        }
        else {
            firstWarningLabel.text = warning
            return (false, -1, -1)
        }
    }

}

