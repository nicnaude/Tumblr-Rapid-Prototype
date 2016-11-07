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
    
    // Variables
    var composeViewController: UIViewController!
    
    // Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        // Compose storyboard
        composeViewController = main.instantiateViewController(withIdentifier: "composeViewController")
        
        print("First animation plays.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Dissapear animation plays.")
    }
    
    // Actions
    @IBAction func onNevermindTapped(content: UIViewController) {
        content.willMove(toParentViewController: nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
        //        composeViewController.dismiss(animated: true, completion: nil)
        //        composeViewController!.willMove(toParentViewController: nil)
        //        composeViewController!.view.removeFromSuperview()
        //        composeViewController!.removeFromParentViewController()
        //    }
        
        
    }
}
