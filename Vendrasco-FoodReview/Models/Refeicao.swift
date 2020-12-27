//
//  Refeicao.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 21/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class Refeicao: NSObject, NSCoding {
 
    
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
    
    
    //MARK: - NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(prato, forKey: "prato")
        aCoder.encode(nota,forKey: "nota" )
        aCoder.encode(itens, forKey: "itens")
    }
    
    required init?(coder aDecoder: NSCoder) {
        prato = aDecoder.decodeObject(forKey: "prato") as! String
        nota = aDecoder.decodeInteger(forKey: "nota")
        itens = aDecoder.decodeObject(forKey: "itens") as! Array <Item>
    }
    
    
    //MARK: - Metodos
    func totalDeCalorias () -> Double{
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    }

    func detalhes() -> String{
        var mensagem = "Nota: \(nota)"
        
        for item in itens{
            mensagem += ", \(item.prato) - calorias: \(item.calorias)"
        }
    return mensagem
    }
}

