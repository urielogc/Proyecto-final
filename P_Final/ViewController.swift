//
//  ViewController.swift
//  P_Final
//
//  Created by Alumno on 06/11/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var table : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return productos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "celda")
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
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "detailSegue"){
            let vista = segue.destination as! DetailView
            let indexPath = table.indexPathForSelectedRow
            let producto = productos[indexPath!.row]
            
            vista.fromViewOne = producto
            print(producto.nombre)
        }else{
            let carrito = segue.destination as! BuysViewController
        }
    }
    
    //delegado
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

