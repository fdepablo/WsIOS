//
//  SegundoController.swift
//  Segue
//
//  Created by Alumno on 17/02/2022.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class SegundoController: UIViewController {

    
    @IBOutlet weak var labelNombre: UILabel!
    
    //Este atributo representara una entrada desde
    //la anterior escena
    var parametroEntradaNombre : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelNombre.text = parametroEntradaNombre
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
