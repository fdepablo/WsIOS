//
//  ViewController.swift
//  AppBasica
//
//  Created by Alumno on 03/02/2021.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Propiedades
    @IBOutlet weak var textoNombre: UITextField!
    
    @IBOutlet weak var labelNombre: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    @IBAction func cambiarNombreLabel(_ sender: Any) {
        labelNombre.text = textoNombre.text;
    }
    
    @IBAction func resetLabel(_ sender: Any) {
        labelNombre.text = "Nombre:"
    }
    

}

