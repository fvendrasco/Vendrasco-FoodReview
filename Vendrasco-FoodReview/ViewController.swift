//
//  ViewController.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 16/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet var pratoTextField: UITextField!

    @IBAction func adicionar(_ sender: Any) {
        
       let nome = nomeTextField.text
       let prato = pratoTextField.text
        
        
        print("Comi \(nome) e dei a nota: \(prato)")
    }


}

