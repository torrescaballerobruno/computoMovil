import UIKit

class Alumno {
    func leer(){
        print("Alumno leyendo")
    }
}

class Ingenieria:Alumno,Estudiar{
    func calculoVectorial(){
        print("Estudaindo calculo")
    }
}


class Derecho:Alumno,Estudiar {
    func calculoVectorial(){
        print("Alumno estudiando calculo")
    }
}

protocol Estudiar{
    func calculoVectorial()
}

var sofia = Ingenieria()
var jose = Derecho()


extension String{
    func grita(){
        print("GRITANDO")
    }
}

var cadena: String = "Hola Mundo"


cadena.grita()

"Hola Mundo".grita()
