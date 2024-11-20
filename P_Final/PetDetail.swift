//
//  PetDetail.swift
//  P_Final
//
//  Created by Pablo Sánchez on 12/12/23.
//

import UIKit

var pet : Mascota!

class PetDetail: UIViewController {
    
    var pet : Mascota!
    
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var raza: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var telefono: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nombre.text = pet.nombre
        raza.text = pet.especie + pet.raza
        imagen.image = UIImage(named: pet.foto)
        telefono.text = "\(pet.contacto)"
        descripcion.text = pet.descripcion
    }

}
