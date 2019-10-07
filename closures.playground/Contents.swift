import UIKit

class Constantes{
    static let iva: Double = 16.0
    static let g: Double = 9.8
}

var vari = { (param: String,param2: Int) -> ()  in
    for _ in 0...param2 {
        print(param)
    }
}

vari("Hola Mundo",5)

func algo(x: String, y : Int, function: (String,Int) ->() ){
    function(x,y)
}

algo(x: "Adios",y: 3,function: vari)


print(Constantes.iva)
