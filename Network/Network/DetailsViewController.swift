//
//  DetailsViewController.swift
//  Network
//
//  Created by AL on 16/04/2019.
//  Copyright © 2019 AL. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var model:User?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let m = model {
            let text = "\(m.id)\n\(m.name)\n\(m.username)\n\(m.email)"
            textView.text = text
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
