//
//  HomeViewController.swift
//  Tumblr rapid prototype
//
//  Created by Nicholas Naudé on 06/11/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var signUpFormImageView: UIImageView!
    
    //Variables
    
    
    //Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.signUpFormImageView.alpha = 0.0
        // Do any additional setup after loading the view.
    }
    
    // Actions
    @IBAction func onLogInTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.9, delay: 2.0 , options: .curveEaseOut, animations: {
            self.signUpFormImageView.alpha = 1.0
        })
    }
    
}
