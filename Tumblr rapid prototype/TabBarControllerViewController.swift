//
//  TabBarControllerViewController.swift
//  Tumblr rapid prototype
//
//  Created by Nicholas Naudé on 06/11/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class TabBarControllerViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIScrollView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var activityViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containerView.contentSize = CGSize(width: containerView.frame.size.width * 3, height: containerView.frame.size.height)
        
        // Home storyboard
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = main.instantiateViewController(withIdentifier: "homeViewController")
        containerView.addSubview(homeViewController.view)
        
        //        // Search storyboard
        searchViewController = main.instantiateViewController(withIdentifier: "searchViewController")
        //
        //        // Compose storyboard
        composeViewController = main.instantiateViewController(withIdentifier: "composeViewController")
        //
        //        // Account storyboard
        accountViewController = main.instantiateViewController(withIdentifier: "accountViewController")
        //
        //        // Activity storyboard
        activityViewController = main.instantiateViewController(withIdentifier: "activityViewController")
        
        containerView.addSubview(homeViewController.view)
        
        //        searchViewController.view.frame = containerView.bounds
        //        searchViewController.view.frame.origin.x = containerView.frame.size.width
        //        containerView.addSubview(searchViewController.view)
        //
        //        composeViewController.view.frame = containerView.bounds
        //        composeViewController.view.frame.origin.x = containerView.frame.size.width * 2
        //        containerView.addSubview(composeViewController.view)
        
    } // end of ViewDidLoad
    
    
    // Methods:
    @IBAction func onHomeButtonTapped(_ sender: UIButton) {
        containerView.setContentOffset(CGPoint(x:0,y:0), animated: true)
        
        containerView.addSubview(homeViewController.view)
        
        addChildViewController(homeViewController)
        homeViewController.didMove(toParentViewController: self)
    }
    
    @IBAction func onSearchButtonTapped(_ sender: UIButton) {
        containerView.addSubview(searchViewController.view)
    }
    
    @IBAction func onComposeButtonTapped(_ sender: UIButton) {
        containerView.addSubview(composeViewController.view)
    }
    
    @IBAction func onActivityButtonTapped(_ sender: UIButton) {
        containerView.addSubview(activityViewController.view)
    }
    
    @IBAction func onAccountButtonTapped(_ sender: UIButton) {
        containerView.addSubview(accountViewController.view)
    }
    
    
} // The end
