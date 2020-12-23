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

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AdicionaItensDelegate {
    
    
    //MARK: - IBOutlet
    
    @IBOutlet weak var itensTableView: UITableView!
    
    //MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    var itens: [Item] = [Item(prato: "Molho de Tomate", calorias: 50.0 ),
                         Item(prato: "Queijo", calorias: 100.0 ),
                         Item(prato: "Pesto", calorias: 150.0 ),
                         Item(prato: "Molho Braco", calorias: 200.0 ), ]
    
    var itensSelecionados: [Item] = []
    
    //MARK: - IBOutlets
    
    @IBOutlet var pratoTextField: UITextField?
    @IBOutlet var notaTextField: UITextField?
    
    //MARK: - View life cycle
    
    override func viewDidLoad() {
        let botaoAdicionaItem = UIBarButtonItem( title: "Adicionar", style: .plain, target: self, action: #selector (adicionarItens))
        navigationItem.rightBarButtonItem = botaoAdicionaItem
    }
    
    @objc func adicionarItens() {
        let adicionarItensViewController = AdicionarItensViewController(delegate: self)
        navigationController?.pushViewController(adicionarItensViewController, animated: true)
    }
    
    func add(_ item: Item) {
        itens.append(item)
        itensTableView.reloadData()
        
    }


    //MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell( style: .default, reuseIdentifier: nil)
        
        let linhaDaTabela = indexPath.row
        let item = itens [linhaDaTabela]
        
        celula.textLabel?.text = item.prato
        
        return celula
    }
    
    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let celula = tableView.cellForRow(at: indexPath) else { return}
        
        
        if celula.accessoryType == .none{
            celula.accessoryType = .checkmark
            
            let linhaDaTabela = indexPath.row
        
            itensSelecionados.append(itens[linhaDaTabela])
            
        } else {
            celula.accessoryType = .none
            
            let item = itens[indexPath.row]
           if let position = itensSelecionados.index(of: item){
                itensSelecionados.remove(at: position)
            
            }
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


