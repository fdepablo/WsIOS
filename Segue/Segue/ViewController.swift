//
//  ViewController.swift
//  Segue
//
//  Created by Alumno on 17/02/2022.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textoNombre: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Siempre que se ejecute un "segue" desde una escena, se ejecutará esta función
    //for segue -> contiene la escena que queremos ejecutar
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Preguntamos a que escena queremos ir
        if segue.destination is SegundoController {
            //Casteamos el segue.destination a un tipo Segundo controller para poder acceder a sus atributos
            let segundoController = segue.destination as? SegundoController
            //Asignamos el valor de textoNombre al atributo que hemos creado en la segunda actividad
            segundoController?.parametroEntradaNombre = textoNombre.text
        }
    }
	
	//Este método se ejecuta siempre que vayamos a ejecutar un segue, en caso
    //de que devolvamos false, no se ejecutara el segue
    //En este ejemplo, en caso de que el nombre sea manolo, no lo enviaremos
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if textoNombre?.text == "manolo" {
            return false
        }
        return true
    }

}

