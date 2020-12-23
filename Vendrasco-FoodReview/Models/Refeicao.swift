//
//  Refeicao.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 21/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
    //MARK: - Atributos
    
    let prato: String
    let nota: Int
    var itens: Array<Item> = []
    
    //MARK: - Construtor
    
    init(prato: String, nota: Int, itens: [Item] = []) {
        self.prato = prato
        self.nota = nota
        self.itens = itens
    }
    
    //MARK: - Metodos
    func totalDeCalorias () -> Double{
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    }
}
