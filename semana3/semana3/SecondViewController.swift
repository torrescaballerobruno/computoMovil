import UIKit

class SecondViewController: UIViewController {

    var dato: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        print(dato)
    }
    
    @IBAction func cerrar(_ sender: UIButton) {
        dismiss(animated: true, completion:nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
