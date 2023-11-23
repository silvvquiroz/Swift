//
//  SecondViewController.swift
//  SegueApp
//
//  Created by luser on 11/15/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var nombreLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("función llamada: viewDidLoad")
        nombreLabel.text = myName
    }
    

}
