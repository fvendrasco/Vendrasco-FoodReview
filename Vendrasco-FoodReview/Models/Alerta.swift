//
//  Alerta.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 23/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class Alerta {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(titulo: String = "Atençao!", mensagem: String)  {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction (title: "OK", style: .cancel, handler: nil)
            
            alerta.addAction(ok)
            
            controller.present(alerta, animated: true, completion: nil)
        }
    }

