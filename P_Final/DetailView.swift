//
//  DetailView.swift
//  P_Final
//
//  Created by Alumno on 08/11/23.
//

import UIKit

class DetailView: UIViewController {
    
    @IBOutlet weak var nombre : UILabel!
    @IBOutlet weak var marco: UIImageView!
    @IBOutlet weak var marca: UILabel!
    @IBOutlet weak var precio: UILabel!
    
    @IBOutlet weak var cantidad: UILabel!
    
    @IBOutlet weak var mensaje: UILabel!
    var fromViewOne : Producto!

    override func viewDidLoad() {
        super.viewDidLoad()
        nombre.text = fromViewOne.nombre
        marca.text = "Marca: " + fromViewOne.marca
        marco.image = UIImage(named: fromViewOne.image)
        precio.text = "Precio: $\(fromViewOne.precio)"
        
        cantidad.text = "1"
        
        mensaje.text = ""
    }
    
    @IBAction func comprar(_ sender: Any){
        let total = Double(cantidad.text!)! * fromViewOne.precio
        
        mensaje.text = "Usted pago: \(total)"
    }
    
    @IBAction func agregarAlCarro(_ sender: Any) {
        
        carrito += [fromViewOne]
    }
    
    @IBAction func aumentar(_ sender: Any){
        if (Int(cantidad.text!)! < 30) && (Int(cantidad.text!)! < fromViewOne.inventario){
            cantidad.text = "$\(Int(cantidad.text!)! + 1)"
        }
    }
    
    @IBAction func disminuir(_ sender: Any){
        if Int(cantidad.text!)! > 1 {
            cantidad.text = "\(Int(cantidad.text!)! - 1)"
        }
    }
}
