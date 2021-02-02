//
//  ContentView.swift
//  01_AppBasicaSwiftUI
// Aqui podemos configurar nuestra interfaz grafica del usuario. A la derecha tenemos una columna que si pulsamos el boton "Resume" se cargará una previsualización de la interfaz

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!").padding()
        //Si pulsamos el boton "+" podemos add componentes graficos aquí, arrastrando o haciendo "click" sobre el
        Text("Hola Mundo").padding()
        Text("Hallo Welt").padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
