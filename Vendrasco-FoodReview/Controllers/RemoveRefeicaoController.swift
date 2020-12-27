//
//  RemoveRefeicaoController.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 25/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class RemoveRefeicaoViewController{
    
    let controller: UIViewController
    
    init(controller: UIViewController){
        self.controller = controller
    }
    
    func exibe(_ refeicao: Refeicao, handler: @escaping (UIAlertAction) -> Void){
    

        let alerta = UIAlertController(title: refeicao.prato, message: refeicao.detalhes(), preferredStyle: .alert)

        let botaoCancelar = UIAlertAction (title: "Cancelar", style: .cancel)
        alerta.addAction(botaoCancelar)

        let botaoRemover = UIAlertAction (title: "Remover", style: .destructive, handler: handler)
        alerta.addAction(botaoRemover)

        controller.present(alerta, animated: true, completion: nil)
        
    }
}
