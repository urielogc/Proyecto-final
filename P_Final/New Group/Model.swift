//
//  Model.swift
//  P_Final
//
//  Created by Pablo Sánchez on 11/12/23.
//

import Foundation

import Foundation
import UIKit

struct Producto{
    var nombre : String
    var marca : String
    var precio : Double
    var inventario : Int
    var image : String
}

var productos : [Producto] = [
    Producto(nombre: "Comida para Perro Adulto 12 Kg", marca: "Pedigree", precio: 100, inventario: 1000, image: "alimentoPerroAdulto(1)"),
    Producto(nombre: "Comida para Gato Adulto 9 Kg", marca: "Whiskas", precio: 100, inventario: 1000, image: "comidaGatoAdulto(1)"),
    Producto(nombre: "Jaula Grande para Aves", marca: "AbaqKalza", precio: 1200, inventario: 100, image: "jaulaAvesGrande(1)"),
    Producto(nombre: "Kit Acuerio Completo", marca: "El Tío Mascotas", precio: 1499.99, inventario: 50, image: "peceraGrande(1)"),
    Producto(nombre: "Arbol para Gatos de 143 cm", marca: "FEANDREA", precio: 2299.99, inventario: 50, image: "arbolGato(1)"),
    Producto(nombre: "Terrario para reptil y anfibio", marca: "Hagen", precio: 1000.00, inventario: 50, image: "terrarioReptilyAnfibio(1)")
]

var carrito : [Producto] = []
