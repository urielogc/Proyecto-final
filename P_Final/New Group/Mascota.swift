//
//  Mascota.swift
//  P_Final
//
//  Created by Pablo Sánchez on 11/12/23.
//

import Foundation

import Foundation

public class Mascota{
    var nombre : String = ""
    var especie : String = ""
    var raza : String = ""
    var edad : String = ""
    var contacto : Int = 0
    var foto : String = ""
    var descripcion : String = ""
    
    //Constructor
    init(nombre: String, especie: String, raza: String, edad: String, contacto: Int, foto: String, descripcion: String) {
        self.nombre = nombre
        self.especie = especie
        self.raza = raza
        self.edad = edad
        self.contacto = contacto
        self.foto = foto
        self.descripcion = descripcion
    }
}
