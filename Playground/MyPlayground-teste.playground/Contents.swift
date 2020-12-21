import UIKit

class Pessoa {
    var nome:String?
}
let pedro = Pessoa()
print(pedro.nome)


if pedro.nome == nil {
    return
}
print(pedro.nome)
