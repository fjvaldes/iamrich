//
//  ViewController.swift
//  iamrich
//
//  Created by Francisco Valdés Romero on 11/13/18.
//  Copyright © 2018 Francisco Valdés Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewDiamond: UIImageView!
    @IBOutlet weak var buttonPush: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "I am rich" , message:
                                                                        """
                                                                        I am Rich,
                                                                        I deserve it.
                                                                        I am good
                                                                        healthy and successfull
                                                                        """,
                                                                        preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            print("He pulsaodo el boton aceptar")
        }
        controller.addAction(action)
        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: { (action) in
            print("He pulsado el boton borrar")
        })
        controller.addAction(action2)
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("He pulsado el boton cancelar")
        }
        controller.addAction(action3)
        self.show(controller, sender: nil)
    }

}

