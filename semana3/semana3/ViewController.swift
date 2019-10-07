//
//  ViewController.swift
//  semana3
//
//  Created by Bruno Torres D4 on 8/21/19.
//  Copyright © 2019 Bruno Torres D4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func desdeVistaDos(segue: UIStoryboardSegue){
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondView = segue.destination as! SecondViewController
        secondView.dato = "Hola Mundo"
    }

}

