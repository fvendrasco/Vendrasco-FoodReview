//
//  AdicionarItensViewController.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 22/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var pratoTextField: UITextField!
    @IBOutlet weak var caloriasTextField: UITextField!
    
    
    //MARK: - Atributos
    
    var delegate : AdicionaItensDelegate?
    
    init (delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    //MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MAR: - IBAction
    // navegar para a proxima tela: navigationController.push()
    // voltar para a tela anterior: navigationController.pop()
    //if let ou guard let - para extrair valores do campo "TextField"
    
    @IBAction func adicionarItem(_ sender: Any) {
        
        guard let prato = pratoTextField.text, let calorias = caloriasTextField.text else { return }
        
        if let numeroDeCalorias = Double(calorias) {
        let item = Item(prato: prato, calorias: numeroDeCalorias)

        delegate?.add(item)
        navigationController?.popViewController(animated: true)
        }
    }
}
