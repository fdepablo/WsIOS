//
//  ViewController.swift
//  01_AppBasicaStoryBoard
//
//  Created by Alumno on 03/01/2021.
//

import UIKit

//Para poder comunicar objetos con otros hay que usar el patron
//delegate, por lo tanto habria que extender la clase del
//delegate correspondiente (en este caso UITextFieldDelegate)

//En este caso vamos a comunicar el objeto TextField con
//el objeto ViewController
class ViewController: UIViewController, UITextFieldDelegate {

    /*
     The IBOutlet attribute tells Xcode that you can connect to the nameTextField property from Interface Builder (which is why the attribute has the IB prefix). The weak keyword indicates that the reference does not prevent the system from deallocating the referenced object. Weak references help prevent reference cycles; however, to keep the object alive and in memory you need to make sure some other part of your app has a strong reference to the object. In this case, it’s the text field’s superview. A superview maintains a strong reference to all of its subviews. As long as the superview remains alive and in memory, all of the subviews remain alive as well. Similarly, the view controller has a strong reference to its content view—keeping the entire view hierarchy alive and in memory.


     */
    //MARK: Properties

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        /*
         When you work with accepting user input from a text field, you need some help from a text field delegate. A delegate is an object that acts on behalf of, or in coordination with, another object. The delegating object—in this case, the text field—keeps a reference to the other object—the delegate—and at the appropriate time, the delegating object sends a message to the delegate. The message tells the delegate about an event that the delegating object is about to handle or has just handled. The delegate may respond by for example, updating the appearance or state of itself or of other objects in the app, or returning a value that affects how an impending event is handled.

         A text field’s delegate communicates with the text field while the user is editing the text, and knows when important events occur—such as when a user starts or stops editing text. The delegate can use this information to save or clear data at the right time, dismiss the keyboard, and so on.

         Any object can serve as a delegate for another object as long as it conforms to the appropriate protocol. The protocol that defines a text field’s delegate is called UITextFieldDelegate. It is very common to make a view controller the delegate for objects that it manages. In this case, you’ll make your ViewController instance the text field’s delegate.
         */
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }

    //MARK: UITextFieldDelegate
    //The UITextFieldDelegate protocol defines eight optional methods. Just implement the ones you need to get the behaviors you desire. For now, you’ll need to implement two of these methods:
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()//quita el foco del textfield para quitar el teclaro
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        nameLabel.text = textField.text
    }
    
    //Mark: Actions
    /*
     The sender parameter refers to the object that was responsible for triggering the action—in this case, a button. The IBAction attribute indicates that the method is an action that you can connect to from your storyboard in Interface Builder. The rest of the declaration declares a method by the name of setDefaultLabelText(_:).
     */

          
    @IBAction func ponerOtroNombre(_ sender: UIButton) {
        nameLabel.text = "boton pulsado"
    }
    
    
    @IBAction func ponerNombreCaja(_ sender: UIButton) {
        nameLabel.text = nameTextField.text
        
    }
}

