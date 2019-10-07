import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var caja: UITextField!
    @IBOutlet weak var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func aceptar(_ sender: UIButton){
        print(caja.text!)
        if let valor = caja.text{
            print("valor: \(valor)")
            if let numero = Int(valor){
                if numero <= 100{
                    if esPrimo(numero){
                        etiqueta.text = "Es primo"
                    }else{
                        etiqueta.text = "No es primo"
                    }
                }
            }else{
                print("No es un numero")
            }
        }else{
            print("No tecleo nada")
        }
        
        let valor = caja.text ?? "No hay nada"
        print("valor \(valor)")
    }

    func esPrimo(numero: Int) -> Bool{
//        n-1! + 1 = multiplo de n
        
    }
}
