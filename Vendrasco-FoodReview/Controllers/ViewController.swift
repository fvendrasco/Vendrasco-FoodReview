//
//  ViewController.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 16/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var pratoTextField: UITextField?
    @IBOutlet var notaTextField: UITextField?

    @IBAction func adicionar(_ sender: Any) {
        
        if let nomeDoPrato = pratoTextField?.text, let notaDaRefeicao = notaTextField?.text {
            
            let prato = nomeDoPrato
            
            if let nota = Int (notaDaRefeicao){
                let refeicao = Refeicao (prato: prato, nota: nota)
                
                print("Comi \(refeicao.prato) e dei a nota: \(refeicao.nota)")
                
            }else{
                print("Erro ao tentar criar a refeição")
            }
        }
    }
}


