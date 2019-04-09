//
//  MonViewController.swift
//  PassageDeDonnees
//
//  Created by AL on 20/03/2018.
//  Copyright © 2018 Alban. All rights reserved.
//

import UIKit

class MonViewController: UIViewController {

    @IBOutlet weak var monLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func monButtonClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toDetails", sender: self)
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
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
