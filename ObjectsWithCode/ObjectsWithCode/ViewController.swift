//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by luser on 11/10/23.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    let myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // medidas de la vista (pantalla)
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        //let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width/2 - width*0.8/2, y: 100, width: width*0.8, height: 100) //<- para centrar el objeto se resta la mitad del ancho totalmenos la mitad del ancho del objeto, lo mismo aplica para el eje y
        view.addSubview(myLabel) //<- para agregar el objeto a la jerarquía de la vista

        let myTextField = UITextField()
        myTextField.placeholder = "Nombre"
        myTextField.textAlignment = .left
        myTextField.borderStyle = .roundedRect
        myTextField.frame = CGRect(x: width/2 - width*0.8/2, y: 200, width: width*0.8, height: 30)
        myTextField.clearButtonMode = .whileEditing
        view.addSubview(myTextField)
        
        // botones
        let myButton = UIButton()
        myButton.setTitle("Guardar", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        myButton.setTitleColor(.darkGray, for: .highlighted)
        myButton.frame = CGRect(x: width/2 - width*0.5/2, y: 250, width: width*0.5, height: 30)
        //myButton.addTarget(self, action: #selector(ViewController.dispararNotif), for: .touchUpInside)
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: .touchUpInside)
        view.addSubview(myButton)
    }
    
    @objc func myAction() {
        myLabel.text = "Guardado!"
    }
    
    @objc func dispararNotif() {
        
        // contenido de la notificación
        let contenido = UNMutableNotificationContent()
        contenido.title = "Guardado!"
        contenido.body = "Holi jiji, el nombre fue guardado"
        
        // disparador
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)

        // solicitud de notificación
        let request = UNNotificationRequest(identifier: "savedNotification", content: contenido, trigger: trigger)
        
        // añadir la solicitud al centro de notificaciones
        UNUserNotificationCenter.current().add(request) { (error) in
            
            if let error = error {
                print("Error al programar la notificación")
            }
            else {
                print("Notificación programada con éxito")
            }
        }
        
    }
    
    

}

