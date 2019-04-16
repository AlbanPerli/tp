//
//  ViewController.swift
//  Network
//
//  Created by AL on 09/04/2019.
//  Copyright © 2019 AL. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var models = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Before request")
        
        tableView.dataSource = self
        tableView.delegate = self
        
        AF.request("https://jsonplaceholder.typicode.com/users").responseString { response in
            
            print("Received response")
            // get value from response (String)
            if let userJSON = response.value {
                // Convert string to Data
                let data = Data(userJSON.utf8)
                // Create a decoder
                let decoder = JSONDecoder()
                do {
                    // Try to decode an array of User
                    // -> User has to be conform to Codable
                    let decoded = try decoder.decode([User].self, from: data)
                    self.models = decoded
                    
                    self.tableView.reloadData()
                    
                } catch {
                    print("Failed to decode JSON")
                }
            }
            
        }
        
        print("After request")
    }


}

extension ViewController:UITableViewDelegate {
    
}

extension ViewController:UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let model = models[indexPath.row]
        cell.textLabel?.text = model.name
        
        return cell
        
    }
    
    
    
}
