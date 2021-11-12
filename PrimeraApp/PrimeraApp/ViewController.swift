//
//  ViewController.swift
//  PrimeraApp
//
//  Created by Alumno on 12/11/2021.
//

import UIKit

//La clase viewController haria de intemediario con el Main.storyboard. Tiene que extender de la clase UIViewController.
class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var labelNombre: UILabel!
    
    @IBOutlet weak var tfNumero1: UITextField!
    
    @IBOutlet weak var tfNumero2: UITextField!
    
    @IBOutlet weak var labelResultado: UILabel!
    
    
    //Enn principio solo nos aparece este metodo sobreescrito de la clase padre. En Swift para sobreescribir un metodo debemos de poner la palabra "override"
    //Este metodo se va a ejecutar cuando se cree el controlador. Al igual que en android aqui se aplica la inversion de control, es decir, nosotros no vamos a crear este objeto, sera IOS quien lo cree por nosotros y nos proporcione metodos callback cuando pase por los distintos estados.
    //Este metodo seria equivalente al metodo onCreate()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    @IBAction func ponerTextoPorDefecto(_ sender: UIButton) {
        labelNombre.text = "Valor por defecto"
    }
    
    @IBAction func ponerTextoInput(_ sender: UIButton) {
        labelNombre.text = tfNombre.text
    }
    
    
    @IBAction func sumar(_ sender: UIButton) {
        //El texto que devuelve es un optional
        let numero1 : String = tfNumero1.text ?? "0"
        let numero2 : String = tfNumero2.text ?? "0"
        
        let iNumero1 : Int = Int(numero1) ?? 0
        let iNumero2 : Int = Int(numero2) ?? 0
        
        let resultado : Int = iNumero1 + iNumero2
        
        labelResultado.text = String(resultado)
    }
    
}

