import UIKit


class Refeicao {
    
    //MARK: - Atributos
    
    var prato: String
    var nota: String
    var itens: Array <Item> = []
    //MARK: - Construtor
    
    class Item {
        var prato: String
        var calorias: Double
        

    init(prato: String, nota: String) {
        self.prato = prato
        self.calorias = 0.0
    }
    
}


let refeicao2 = Refeicao ( prato: "macarrao", nota: "4" )

let refeicao3 = Refeicao(prato: "Feijao", nota: "5")


print(refeicao2.prato)
print(refeicao2.nota)

print(refeicao3.prato)
print(refeicao3.nota)
