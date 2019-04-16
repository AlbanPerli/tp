//
//  ViewController.swift
//  ImageDownload
//
//  Created by AL on 16/04/2019.
//  Copyright © 2019 AL. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png")
        imageView.kf.setImage(with: url)
        
    }


}

