//
//  ViewController.swift
//  Alert
//
//  Created by luser on 11/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButtonClicked(_ sender: Any) {
/*
        // crear el mensaje de alerta
        let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        
        // crear el botón de accion de la alerta
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("ok button clicked")
        }
        
        // conectar el botón con la alerta
        alert.addAction(okButton)
        
        // mostrar el mensaje de alerta
        self.present(alert, animated: true, completion: nil)
 */
        
        // ALERTAS
        let username = usernameTextField.text
        let password = passwordTextField.text
        let passwordAgain = passwordAgainTextField.text
        
        // verificar si el usuario no está en blanco
        if username==nil || username=="" || username==" "{
            makeAlert(titleInput: "Username is not valid", messageInput: "Try another username")
        }
        // verificar si la contraseña no está en blanco
        else if password==nil || password=="" || password==" "{
            makeAlert(titleInput: "Password is not valid", messageInput: "Try another password")
        }
        // verificar si la contraseña no coincide
        else if password != passwordAgain {
            makeAlert(titleInput: "Passwords do not match", messageInput: "Try again")
        }
        else {
            makeAlert(titleInput: "User created successfully", messageInput: "Log in")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

