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
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var nevermindButton: UIButton!
    @IBOutlet weak var nevermindImageView: UIImageView!
    @IBOutlet weak var nevermindView: UIView!
    
    // Variables
    var composeViewController: UIViewController!
    var textButtonOriginalCenter: CGPoint!
    var textButtonMove: CGPoint!
    var offsetForButtonY: CGFloat! = 400.0 + 47.5
    var offsetForButtonX: CGFloat! = 37.5
    
    var textButtonEndPoint: CGPoint! = CGPoint(x: 16 + 37.5, y: 143 + 47.5)
    var photoButtonEndPoint: CGPoint! = CGPoint(x: 123 + 37.5, y: 143 + 47.5)
    var quoteButtonEndPoint: CGPoint! = CGPoint(x: 229 + 37.5, y: 143 + 47.5)
    
    var linkButtonEndPoint: CGPoint! = CGPoint(x: 16 + 37.5, y: 265 + 47.5)
    var chatButtonEndPoint: CGPoint! = CGPoint(x: 123 + 37.5, y: 265 + 47.5)
    var videoButtonEndPoint: CGPoint! = CGPoint(x: 229 + 37.5, y: 265 + 47.5)
    
    
    // Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        textButtonOriginalCenter = CGPoint(x:textButton.center.x ,y: textButton.center.y)
//        textButtonMove = CGPoint(x: textButton.center.x,y: textButton.center.y)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("First animation plays.")
        
        UIView.animate(withDuration: 0.4, delay: 0.2 , options: .curveEaseOut, animations: {
            self.textButton.center = self.textButtonEndPoint
            self.photoButton.center = self.photoButtonEndPoint
            self.quoteButton.center = self.quoteButtonEndPoint
            
            self.linkButton.center = self.linkButtonEndPoint
            self.chatButton.center = self.chatButtonEndPoint
            self.videoButton.center = self.videoButtonEndPoint
        })
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("Dissapear animation plays.")
    }
    
    // Actions
    @IBAction func onNevermindTapped(sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.0 , options: .curveEaseOut, animations: {
            
            self.textButton.center = CGPoint(x: self.textButton.center.x, y: self.textButton.center.y + (self.offsetForButtonY + 10))
            self.photoButton.center = CGPoint(x: self.photoButton.center.x, y: self.photoButton.center.y + (self.offsetForButtonY + 30))
            self.quoteButton.center = CGPoint(x: self.quoteButton.center.x, y: self.quoteButton.center.y + (self.offsetForButtonY + 90))
            
            self.linkButton.center = CGPoint(x: self.linkButton.center.x, y: self.linkButton.center.y + (self.offsetForButtonY + 60))
            self.chatButton.center = CGPoint(x: self.chatButton.center.x, y: self.chatButton.center.y + (self.offsetForButtonY + 20))
            self.videoButton.center = CGPoint(x: self.videoButton.center.x, y: self.videoButton.center.y + (self.offsetForButtonY + 40))
            self.nevermindView.center = CGPoint(x: self.nevermindView.center.x, y: self.nevermindView.center.y + 100)
            
        }, completion: { finished in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
             self.dismiss(animated: true, completion: nil)
            }
        })
    }
}
