//
//  Persona.swift
//  02_ModeloDeDatos
//
//

import UIKit

class Persona{
    
    //MARK: Properties
    
    var nombre: String
    var edad: Int
    var peso: Double
    
    //MARK: Initialization
    //Un constructor es un metodo con el nombre "init"
    //Podemos crear constructores con parametros
    init?(nombre: String, edad: Int, peso: Double) {
        
        // La inicialización debería fallar si el nombre esta vacio o la edad es menor que 0 o el peso es menor que 0, pero entonces el iniciaizador debe ser declarado como "init?" o "init!" ya que puede fallar al iniciar
        if nombre.isEmpty || edad < 0 || peso < 0  {
            return nil
        }
        
        self.nombre = nombre;
        self.edad = edad;
        self.peso = peso;
    }
    
    
}

