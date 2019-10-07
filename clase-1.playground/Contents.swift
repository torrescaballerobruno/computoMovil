import UIKit

//var str = "Hello, playground"


var nomVariable = "Hola"
let nomConstante = 20

type(of: nomVariable)

/*
 String
 Int
 Double
 Float
 Bool
*/

print(nomConstante)
print(UInt.max)


/*
 Definicion de tipos de datos propios
 struct, class
*/

class Saludo{
    func español(){
        print("Saludando en español")
    }
    func saludaA(pers: Persona){
        print("Hola \(pers.nombre)")
    }
}

class Persona{
    var nombre: String
    default var nacionalidad: String

    init(nombre: String){
        self.nombre = nombre
    }
    convenience init(nombre: String, nacionalidad: String){
        self.nombre = nombre
        self.nacionalidad = nacionalidad
    }
}

class Mexicano: Persona{
    var edad: Int
    init(edad: Int, nombre: String){
        self.edad = edad
        super.init(nombre: "Bruno", nacionalidad: "Mexicana")
    }
}

let s = Saludo()
let p1 = Mexicano(edad: 22, nombre : "Bruno")
s.español()
s.español()
s.saludaA(pers: p1)
