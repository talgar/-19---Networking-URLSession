//
//  ViewController.swift
//  Работа с сетью, Networking, URLSession
//
//  Created by admin on 31.08.2020.
//  Copyright © 2020 Talgar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func downloadPostsDidTap() {
    
        networkManager.getAllPosts {[weak self](posts) in
             
            DispatchQueue.main.async {
                   self?.titleLabel.text = "Posts has been downloaded"
                
                }
            }
       }
}

