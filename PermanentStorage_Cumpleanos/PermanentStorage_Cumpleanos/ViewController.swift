//
//  ViewController.swift
//  PermanentStorage_Cumpleanos
//
//  Created by luser on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldNombre: UITextField!
    @IBOutlet weak var textFieldFecha: UITextField!
    @IBOutlet weak var labelNombre: UILabel!
    @IBOutlet weak var labelFecha: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // leer los datos
        let nombreAlmacenado = UserDefaults.standard.object(forKey: "nombre")
        let fechaAlmacenada = UserDefaults.standard.object(forKey: "fecha")
        
        // castear: as? as!
        if let nombre = nombreAlmacenado as? String {
            labelNombre.text = nombre
        }
        if let fecha = fechaAlmacenada as? String {
            labelFecha.text = fecha
        }
        
        
    }
    
    @IBAction func guardarButtonClicked(_ sender: Any) {
        // solo mostrar el texto
        //labelNombre.text = textFieldNombre.text!
        //labelNombre.text = "Nombre: \(textFieldNombre.text)" //-> con el \( ) se puede añadir una variable al texto
        //labelFecha.text = textFieldFecha.text!
        
        
        // almacenar datos
        UserDefaults.standard.set(textFieldNombre.text!, forKey: "nombre")
        UserDefaults.standard.set(textFieldFecha.text!, forKey: "fecha")
        //UserDefaults.standard.synchronize() -> no sirve jiji!!
    }
    
    @IBAction func eliminarButtonClicked(_ sender: Any) {
        
        let nombreAlmacenado = UserDefaults.standard.object(forKey: "nombre")
        let fechaAlmacenada = UserDefaults.standard.object(forKey: "fecha")
        
        // verificar que sí hay algo almacenado
        if (nombreAlmacenado as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "nombre")
            labelNombre.text = nil
        }
        if (fechaAlmacenada as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "fecha")
            labelFecha.text = nil
        }
        
    }
    

}

