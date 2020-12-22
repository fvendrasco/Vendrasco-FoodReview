//
//  ViewController.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 16/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit


protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao )
    
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    var itens: [String] = ["Queijo", "Molho de Tomate", "Manjericao", "Molho Branco"]
    
    
    //MARK: - IBOutlets
    
    @IBOutlet var pratoTextField: UITextField?
    @IBOutlet var notaTextField: UITextField?

    //MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell( style: .default, reuseIdentifier: nil)
        
        let linhaDaTabela = indexPath.row
        let item = itens [linhaDaTabela]
        
        celula.textLabel?.text = item
        
        return celula
    }
    
    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let celula = tableView.cellForRow(at: indexPath) else { return}
        
        
        if celula.accessoryType == .none{
            celula.accessoryType = .checkmark
        } else {
            celula.accessoryType = .none
        }
    }
    
    
    //MARK: - IBActions
    
    @IBAction func adicionar(_ sender: Any) {
        
        if let nomeDoPrato = pratoTextField?.text, let notaDaRefeicao = notaTextField?.text {
            
            let prato = nomeDoPrato
            
            if let nota = Int (notaDaRefeicao){
                let refeicao = Refeicao (prato: prato, nota: nota)
                
                print("Comi \(refeicao.prato) e dei a nota: \(refeicao.nota)")
                
           
                delegate?.add(refeicao)
                navigationController?.popViewController(animated: true)
                
                
            }else{
                print("Erro ao tentar criar a refeição")
            }
        }
    }
}


