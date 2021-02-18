//
//  _2_ModeloDeDatosTests.swift
//  02_ModeloDeDatosTests
//
//  Created by Alumno on 18/02/2021.
//

import XCTest
@testable import _2_ModeloDeDatos

class _2_ModeloDeDatosTests: XCTestCase {
    /*
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }*/
    
    /*
     Metodo que nos sirve para probar que el constructor devuelve el objeto cuando sus parametros son validos
     */
    func testPesonaInitializationSucceeds() {
        let ironMan = Persona.init(nombre: "Tony Stark", edad: 40, peso : 75.5)
        XCTAssertNotNil(ironMan)
         
        let capitanAmerica = Persona.init(nombre: "Steve Rogers", edad: 95, peso : 90)
        XCTAssertNotNil(capitanAmerica)
        
    }
    
    /*
     Metodo que nos sirve para probar que el constructor devuelve nil cuando sus parametros son incorrectos
     */
    func testPesonaInitializationFail() {
        let hulk = Persona.init(nombre: "Bruce Banner", edad: -3, peso : 350)
        XCTAssertNil(hulk)
         
        let thor = Persona.init(nombre: "Simplemente Thor", edad: 2300, peso : -95)
        XCTAssertNil(thor)
    }

}
