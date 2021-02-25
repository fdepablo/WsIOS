//
//  PersonaTableViewController.swift
//  03_NavegacionConTablas
//
//  Created by Alumno on 25/02/2021.
//

import UIKit

class PersonaTableViewController: UITableViewController {
    
    //MARK: Properties
    
    //Al poner var lo hacemos mutable.
    //No hace falta importar la clase
    var personas = [Persona]()

    //MARK: Private Methods
     
    private func cargarPersonas() {
        
        //La palabra reservada "guard" me permite lanzar una sentencia y comprobar que sea nil. En caso de que de como resultado nil, se lanzará el bloque "else". Además, permite desenvolver un optional
        guard let capitanAmerica = Persona(nombre: "Steve Rogers",edad: 40, peso: 90) else {
            //Lanzamos un error fatal que pararía nuestra aplicación
            fatalError("No se ha podido crear la persona")
        }
        
        guard let ironMan = Persona(nombre: "Tony Stark",edad: 45, peso: 80) else {
            //Lanzamos un error fatal que pararía nuestra aplicación
            fatalError("No se ha podido crear la persona")
        }
        
        guard let hulk = Persona(nombre: "Bruce Banner",edad: 42, peso: 350) else {
            //Lanzamos un error fatal que pararía nuestra aplicación
            fatalError("No se ha podido crear la persona")
        }
        
        personas += [capitanAmerica,ironMan,hulk]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        cargarPersonas()
    }

    // MARK: - Table view data source
    //Este metodo nos dice cuantas secciones (grupos de celdas) vamos a mostrar, normalmente 1
    override func numberOfSections(in tableView: UITableView) -> Int {
        //return the number of sections
        return 1
    }

    //Este metodo retorna el numero de celdas o items
    //que vamos a mostrar en la tabla
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return the number of sections
        return personas.count
    }

    //En este metodo nos devolvería cada una de las celdas que se van a mostrar en la tabla
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Las celdas de una Table View son reusadas y deberían ser desencoladas usando un identificador de celda
        let identificadorCelda = "PersonaTableViewCell"
        
        //Obtenemos la celda y la casteamos al tipo PersonaTableViewCell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identificadorCelda, for: indexPath) as? PersonaTableViewCell else {
            fatalError("no se ha podido castear")
        }

        let persona = personas[indexPath.row]
        // Configure the cell...

        cell.nombreLabel.text = persona.nombre
        cell.edadLabel.text = String(persona.edad)
        cell.pesoLabel.text = String(persona.peso)
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
