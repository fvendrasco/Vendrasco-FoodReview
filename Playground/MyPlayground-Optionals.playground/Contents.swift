//ARRAYS

import UIKit

/*
//Criar primeira refeicao
let prato = "macarrao"

let nota = "5"


//Criar segunda refeicao
let prato2 = "Coxinha"

let nota2 = "4"

*/
//-----------------------------


// Criar uma classe que agrupa caracteristicas:

class Refeicao {
    var prato: String?
    var nota: String?
    
}

// Instanciando uma classe

let refeicao = Refeicao( )
refeicao.prato = "macarrao" //caso nao tenha um valor na variavel prato, vai dar ruim...


//Forced unwrap
print( refeicao.prato!)



