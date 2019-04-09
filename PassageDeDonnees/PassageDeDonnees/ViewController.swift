//
//  ViewController.swift
//  PassageDeDonnees
//
//  Created by AL on 20/03/2018.
//  Copyright © 2018 Alban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monLabel: UILabel!
    
    @IBOutlet weak var monBouton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func monBoutonClicked(_ sender: UIButton) {
        print("Avant après le perform segue")
        self.performSegue(withIdentifier: "toDetails", sender: self)
        print("Après après le perform segue")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let id = segue.identifier {
            
            if id == "toDetails" {
                
                if let destVC = segue.destination as? DetailsViewController{
                    print("C'est bien un DetailsViewController")
                    if let txt = monLabel.text {
                        destVC.monSuperText = txt
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
}

