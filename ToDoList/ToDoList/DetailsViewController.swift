//
//  DetailsViewController.swift
//  ToDoList
//
//  Created by AL on 09/04/2019.
//  Copyright © 2019 AL. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var toDo = ToDo(title: "Mon super titre", description: "Ma super description")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.text = toDo.title
        descriptionLabel.text = toDo.description
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
