//
//  ViewController.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 16/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var pratoTextField: UITextField!
    @IBOutlet var notaTextField: UITextField!

    @IBAction func adicionar(_ sender: Any) {
        
       let prato = pratoTextField.text
       let nota = notaTextField.text
        
        
        print("Comi \(prato) e dei a nota: \(nota)")
    }


}

