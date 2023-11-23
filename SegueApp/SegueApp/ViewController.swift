//
//  ViewController.swift
//  SegueApp
//
//  Created by luser on 11/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var nombreFieldText: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("función llamada: viewDidLoad")
        //nombreFieldText.text = ""
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("función llamada: viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("función llamada: viewWillDisappear")

    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("función llamada: viewWillAppear")
        nombreFieldText.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("función llamada: viewDidAppear")
    }
    
    @IBAction func siguienteClickedButton(_ sender: Any) {
        userName = nombreFieldText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // castear el vc destino a la clase del segundo vc (que se supone es el destino)
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }


}

