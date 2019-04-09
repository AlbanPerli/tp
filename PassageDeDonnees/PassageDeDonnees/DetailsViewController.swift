//
//  DetailsViewController.swift
//  PassageDeDonnees
//
//  Created by AL on 20/03/2018.
//  Copyright © 2018 Alban. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var monSuperText:String = "Content"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.resultLabel.text = monSuperText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonClicked(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
