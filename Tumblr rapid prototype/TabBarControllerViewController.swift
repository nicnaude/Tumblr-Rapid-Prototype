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
    @IBOutlet weak var searchMessage: UIImageView!
    
    // ViewControllers
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!

    //    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var activityViewController: UIViewController!
    
    // TabBar buttons
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var activityButton: UIButton!
    
    //variables
    var buttonName: String?
    var increment = CGFloat()
    var messageUpAndDown = CGPoint()
    
    //Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        increment = 10
        
        self.messageUpAndDown = CGPoint(x: self.searchMessage.center.x ,y: self.searchMessage.center.y + increment)
        
        buttonName = "homeButton"
        buttonActiveState(sender: buttonName)
        
        //scrollView
        containerView.contentSize = CGSize(width: containerView.frame.size.width, height: containerView.frame.size.height)
        
        // Home storyboard
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = main.instantiateViewController(withIdentifier: "homeViewController")
        containerView.addSubview(homeViewController.view)
        
        // Search storyboard
        searchViewController = main.instantiateViewController(withIdentifier: "searchViewController")
        
        // Account storyboard
        accountViewController = main.instantiateViewController(withIdentifier: "accountViewController")
        
        // Activity storyboard
        activityViewController = main.instantiateViewController(withIdentifier: "activityViewController")
        
        containerView.addSubview(homeViewController.view)
        
        // Animate floating message
        UIView.animate(withDuration: 0.9, delay: 0.0 , options: [.repeat, .curveEaseOut, .autoreverse], animations: {
            self.searchMessage.center = self.messageUpAndDown
            
        }, completion: { finished in
            //code that runs after the transition is complete here
        })
        //
        
    } // end of ViewDidLoad
    
    
    // Button active state method
    func buttonActiveState (sender: String!) {
        if sender == "homeButton"{
            homeButton.setImage(UIImage(named: "home_selected_icon"), for: UIControlState.normal)
            searchButton.setImage(UIImage(named: "search_icon"), for: UIControlState.normal)
            composeButton.setImage(UIImage(named: "compose_button"), for: UIControlState.normal)
            accountButton.setImage(UIImage(named: "account_icon"), for: UIControlState.normal)
            activityButton.setImage(UIImage(named: "trending_icon"), for: UIControlState.normal)
            searchMessage.isHidden = false
            
        } else if sender == "searchButton"{
            homeButton.setImage(UIImage(named: "home_icon"), for: UIControlState.normal)
            searchButton.setImage(UIImage(named: "search_selected_icon"), for: UIControlState.normal)
            composeButton.setImage(UIImage(named: "compose_button"), for: UIControlState.normal)
            accountButton.setImage(UIImage(named: "account_icon"), for: UIControlState.normal)
            activityButton.setImage(UIImage(named: "trending_icon"), for: UIControlState.normal)
            searchMessage.isHidden = true
        }
        else if sender == "composeButton"{
            homeButton.setImage(UIImage(named: "home_icon"), for: UIControlState.normal)
            searchButton.setImage(UIImage(named: "search_icon"), for: UIControlState.normal)
            composeButton.setImage(UIImage(named: "compose_button"), for: UIControlState.normal)
            accountButton.setImage(UIImage(named: "account_icon"), for: UIControlState.normal)
            activityButton.setImage(UIImage(named: "trending_icon"), for: UIControlState.normal)
            searchMessage.isHidden = false
        }
        else if sender == "accountButton"{
            homeButton.setImage(UIImage(named: "home_icon"), for: UIControlState.normal)
            searchButton.setImage(UIImage(named: "search_icon"), for: UIControlState.normal)
            composeButton.setImage(UIImage(named: "compose_button"), for: UIControlState.normal)
            accountButton.setImage(UIImage(named: "account_selected_icon"), for: UIControlState.normal)
            activityButton.setImage(UIImage(named: "trending_icon"), for: UIControlState.normal)
            searchMessage.isHidden = false
        }
        else if sender == "activityButton"{
            homeButton.setImage(UIImage(named: "home_icon"), for: UIControlState.normal)
            searchButton.setImage(UIImage(named: "search_icon"), for: UIControlState.normal)
            composeButton.setImage(UIImage(named: "compose_button"), for: UIControlState.normal)
            accountButton.setImage(UIImage(named: "account_icon"), for: UIControlState.normal)
            activityButton.setImage(UIImage(named: "trending_selected_icon"), for: UIControlState.normal)
            searchMessage.isHidden = false
        }
    }
    
    // Button methods:
    @IBAction func onHomeButtonTapped(_ sender: UIButton) {
        buttonName = "homeButton"
        buttonActiveState(sender: buttonName)
        
        containerView.setContentOffset(CGPoint(x:0,y:0), animated: true)
        
        containerView.addSubview(homeViewController.view)
        
        addChildViewController(homeViewController)
        homeViewController.didMove(toParentViewController: self)
    }
    
    @IBAction func onSearchButtonTapped(_ sender: UIButton) {
        buttonName = "searchButton"
        buttonActiveState(sender: buttonName)
        
        containerView.addSubview(searchViewController.view)
    }
    
    
    @IBAction func onActivityButtonTapped(_ sender: UIButton) {
        buttonName = "activityButton"
        buttonActiveState(sender: buttonName)
        
        containerView.addSubview(activityViewController.view)
    }
    
    @IBAction func onAccountButtonTapped(_ sender: UIButton) {
        buttonName = "accountButton"
        buttonActiveState(sender: buttonName)
        
        containerView.addSubview(accountViewController.view)
    }
    
} // The end
