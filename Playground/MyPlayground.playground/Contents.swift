// Comentario em uma linha

/*
 Comentario em bloco
 */



// Selecionar o codigo e apertar "command + /" para comentar o que foi selecionado.



import UIKit


var nome = "coxinha" //String

let prato = 5 //Int

let calorias = 750.5  //Double

let vegetal = true // Bolean "Bool"

//func alimentoConsumido( ) {
//    print("O Alimento consumido foi: \(nome)")
//}

//alimentoConsumido()

//func alimentoConsumido (_ nome: String, _ caloria: Double){
//    print("O alimento consumido foi: \(nome), com calorias: \(caloria)")
//}
//
//alimentoConsumido(nome,  calorias)


func alimentoConsumido (nome: String, caloria: Double){
    print("O alimento consumido foi: \(nome), com calorias: \(caloria)")
}

alimentoConsumido(nome: nome, caloria: calorias)
