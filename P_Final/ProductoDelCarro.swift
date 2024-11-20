//
//  ProductoDelCarro.swift
//  P_Final
//
//  Created by Pablo Sánchez on 12/12/23.
//

import UIKit

class ProductoDelCarro: UIViewController {
    
    var producto : Producto!
    var indice : Int!

    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var marca: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var precio: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombre.text = producto.nombre
        marca.text = "Marca: " + producto.marca
        imagen.image = UIImage(named: producto.image)
        precio.text = "Precio: $\(producto.precio)"
    }
    
    @IBAction func quitarDelCarro(_ sender: Any) {
        carrito.remove(at: indice)
    }
    
}
