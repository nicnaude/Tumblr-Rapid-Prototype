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
    @IBOutlet weak var signUpFormView: UIView!
    @IBOutlet weak var cancelButton: UIButton!
    
    //Variables
    
    
    //Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.signUpFormView.alpha = 0.0
        // Do any additional setup after loading the view.
    }
    
    // Actions
    @IBAction func onLogInTapped(_ sender: Any) {
        self.cancelButton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        UIView.animate(withDuration: 0.5, delay: 0.1 , options: .curveEaseOut, animations: {
            self.signUpFormView.alpha = 1.0
        })
    }
    
    @IBAction func onCancelButtonTapped(_ sender: UIButton) {
        self.cancelButton.backgroundColor = UIColor(red:0.01, green:0.99, blue:1.00, alpha:1.0)
        self.cancelButton.alpha = 0.5
        
        UIView.animate(withDuration: 0.5, delay: 0.1 , options: .curveEaseOut, animations: {
            self.signUpFormView.alpha = 0.0
        })

    }
}
