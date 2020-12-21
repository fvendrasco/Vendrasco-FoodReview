//
//  Item.swift
//  Vendrasco-FoodReview
//
//  Created by Felipe Augusto Vendrasco on 21/12/20.
//  Copyright © 2020 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class Item: NSObject {
    
    //MARK: - Atributos
    
    var prato: String
    var calorias: Double
    
    //MARK: - Init "Construtor"
    
    init(prato: String, calorias: Double) {
        self.prato = prato
        self.calorias = calorias
    }
}
