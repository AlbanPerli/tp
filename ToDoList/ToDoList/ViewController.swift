//
//  ViewController.swift
//  ToDoList
//
//  Created by AL on 09/04/2019.
//  Copyright © 2019 AL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var datas = [ToDo]()
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }


    @IBAction func addButtonClicked(_ sender: Any) {
        
        if let titleValue = txtField.text,
            let desc = textView.text {
            
            let toDo = ToDo(title: titleValue, description: desc)
            datas.append(toDo)
            self.tableView.reloadData()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let dest = segue.destination as? DetailsViewController {
            dest.toDo = datas[selectedIndex]
        }
        
    }
}

extension ViewController:UITableViewDelegate {
    // MARK: TableView Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.selectedIndex = indexPath.row
        self.performSegue(withIdentifier: "toDetails", sender: self)
        
    }
    
}

extension ViewController:UITableViewDataSource {
    // MARK: TableView Datasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = datas[indexPath.row].title
        
        return cell
    }
    
}
