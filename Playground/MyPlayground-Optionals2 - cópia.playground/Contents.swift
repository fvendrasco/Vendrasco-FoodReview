import UIKit


class Refeicao {
    var prato: String?
    var nota: String?
    
}

// Instanciando uma classe

let refeicao = Refeicao( )
refeicao.prato = "macarrao" //caso nao tenha um valor na variavel prato, vai dar ruim...


//Forced unwrap


if refeicao.prato != nil {
    print( refeicao.prato!)
}


//boas praticas para extrais valores opcionais.


//IF LET

if let prato = refeicao.prato {
        print(prato)
}


//guard let

func exibeNomeDoPrato (){
    if let prato = refeicao.prato{
    
    print(prato)
}
}

guard let prato = refeicao.prato else {
  
}
 exibeNomeDoPrato()



let numero = Int("5")
if let n = numero{
    print(n) }
    
    else
        { print("erro ao converter a string para INT")}


