//
//  RefeicoesTableViewController.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 21/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class RefeicoesTableViewController: UITableViewController, AdicionaRefeicaoDelegate {
    
    var refeicoes = [Refeicao (prato: "Macarrao", nota: 3 ),
                     Refeicao (prato: "Pizza", nota: 5 ),
                     Refeicao (prato: "Farofa", nota: 4 )]
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let celula = UITableViewCell( style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes [indexPath.row]
        
        celula.textLabel?.text = refeicao.prato
        
        return celula
        
    }
    
    func add(_ refeicao: Refeicao ){
        refeicoes.append(refeicao)
        
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "adicionar" {
            if let viewController = segue.destination as? ViewController {
                viewController.delegate = self }
            
            
        }
    
    }
    
}
