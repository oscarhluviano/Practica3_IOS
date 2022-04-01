//
//  ViewController.swift
//  Practica3
//
//  Created by OhLuvi on 30/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    var datos = [String:Any]()
    
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var textV: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nombre = datos["name"] as? String
        let ingredientes = datos["ingredients"] as? String
        let instruc = datos["directions"] as? String
        let img = UIImage(named: (datos["image"] as? String)!) ?? UIImage()
        
        
        
        textV.text = "Nombre: \(nombre!)\n \n" +
        "Ingredientes: \(ingredientes!)\n \n"
        + "Instrucciones: \(instruc!)"
        imageV.image = img
        
        
    }


}

