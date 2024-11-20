//
//  BuysViewController.swift
//  P_Final
//
//  Created by Alumno on 22/11/23.
//

import UIKit

class BuysViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var listaDeCompras: UITableView!
    
    @IBOutlet weak var mensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaDeCompras.delegate = self
        listaDeCompras.dataSource = self
        
        print(carrito)
        
        if carrito.isEmpty{
            mensaje.text = "Todavia no tiene ningun producto seleccionado, siga explorando nuestro catalogo"
        }
    }
    
    //Tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carrito.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        //Atributos de la celda
        cell.imageView!.image = UIImage(named: productos[indexPath.row].image)
        cell.textLabel!.text = productos[indexPath.row].nombre
        cell.detailTextLabel!.text = "$\(productos[indexPath.row].precio)"
        
        cell.textLabel!.numberOfLines = 0
        
        if (indexPath.row % 2) == 1 {
            cell.backgroundColor = UIColor.systemRed
            cell.textLabel?.textColor = UIColor.white
            cell.detailTextLabel!.textColor = UIColor.white
        }else{
            cell.backgroundColor = UIColor.white
        }
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        performSegue(withIdentifier: "Next", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! ProductoDelCarro
        
        let indexPath = listaDeCompras.indexPathForSelectedRow
        let producto = carrito[indexPath!.row]
        
        vista.producto = producto
        vista.indice = indexPath!.row
        print(producto.nombre)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    @IBAction func comprarLista(_ sender: Any) {
        var total = 0.0
        for i in carrito{
            total += i.precio
        }
        
        mensaje.text = "Usted Pago: $\(total)"
        
        carrito.removeAll()
    }
    
}
