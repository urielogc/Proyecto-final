//
//  MenuMascotas.swift
//  P_Final
//
//  Created by Pablo Sánchez on 11/12/23.
//

import UIKit

class MenuMascotas: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var mascotas: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mascotas.delegate = self
        mascotas.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mascotaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "celda")
        //Atributos de la celda
        cell.imageView!.image = UIImage(named: mascotaList[indexPath.row].foto)
        cell.textLabel!.text = mascotaList[indexPath.row].nombre
        cell.detailTextLabel!.text = "Contacto: \(mascotaList[indexPath.row].contacto)"
        
        cell.textLabel!.numberOfLines = 0
        
        if (indexPath.row % 2) == 1 {
            cell.backgroundColor = UIColor.blue
            cell.textLabel?.textColor = UIColor.white
            cell.detailTextLabel!.textColor = UIColor.white
        }else{
            cell.backgroundColor = UIColor.white
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        performSegue(withIdentifier: "petSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! PetDetail
        
        let indexPath = mascotas.indexPathForSelectedRow
        let producto = mascotaList[indexPath!.row]
        
        vista.pet = producto
        print(producto.nombre)
    }

}
