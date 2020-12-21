import UIKit


class Refeicao {
   
    //MARK: - Atributos
    
    var prato: String
    var nota: String
    var itens: Array<Item> = []
    
//MARK: - Construtor

    init(prato: String, nota: String) {
        self.prato = prato
        self.nota = nota
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


class Item {
    var prato: String
    var calorias: Double
    
    init(prato: String, calorias: Double) {
        self.prato = prato
        self.calorias = calorias
    
    }
}


let arroz = Item( prato: "Arroz", calorias: 86.5)
let feijao = Item( prato: "Feijao", calorias: 98.7)
let jacaAtolada = Item(prato: "Jaca Atolada", calorias: 189.8 )


let refeicao = Refeicao( prato: "Almoco", nota: "4")
refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(jacaAtolada)

print(refeicao.prato)
if let primeiroItemDaLista = refeicao.itens.first {
    print(primeiroItemDaLista.prato)
}

print(refeicao.totalDeCalorias())

