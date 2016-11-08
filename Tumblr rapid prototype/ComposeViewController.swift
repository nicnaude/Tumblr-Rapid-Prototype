//
//  ComposeViewController.swift
//  Tumblr rapid prototype
//
//  Created by Nicholas Naudé on 06/11/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var textButtonBubble: UIImageView!
    @IBOutlet weak var cameraButtonBubble: UIImageView!
    @IBOutlet weak var quoteButtonBubble: UIImageView!
    @IBOutlet weak var linkButtonBubble: UIImageView!
    @IBOutlet weak var chatButtonBubble: UIImageView!
    @IBOutlet weak var videoButtonBubble: UIImageView!
    @IBOutlet weak var nevermindButton: UIButton!
    @IBOutlet weak var nevermindImageView: UIImageView!
    
    // Variables
    var composeViewController: UIViewController!
    
    // Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("First animation plays.")
        
   UIView.animate(withDuration: 0.9, delay: 2.0 , options: .curveEaseOut, animations: {
                self.cameraButtonBubble.transform = CGAffineTransform.identity
            })
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("Dissapear animation plays.")
    }
    
    // Actions
    @IBAction func onNevermindTapped(sender: UIButton) {
        UIView.animate(withDuration: 0.9, delay: 2.0 , options: .curveEaseOut, animations: {
            
            
            
        }, completion: { finished in
            self.dismiss(animated: true, completion: nil)
        })
    }
}
