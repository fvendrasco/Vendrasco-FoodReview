//
//  Item.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 21/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    
    
    
    //MARK: - Atributos
    
    var prato: String
    var calorias: Double
    
    //MARK: - Init "Construtor"
    
    init(prato: String, calorias: Double) {
        self.prato = prato
        self.calorias = calorias
    }

    //NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(prato, forKey: "prato")
        aCoder.encode(calorias, forKey: "calorias")
    }
    
    required init?(coder aDecoder: NSCoder) {
        prato = aDecoder.decodeObject(forKey: "prato") as! String
        calorias = aDecoder.decodeDouble(forKey: "calorias")
    }

}


