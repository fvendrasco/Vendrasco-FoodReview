//
//  RefeicoesTableViewController.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 21/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class RefeicoesTableViewController: UITableViewController {
    
    let refeicoes = [Refeicao (prato: "Macarrao", nota: 3 ),
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
    
}
