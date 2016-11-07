//
//  AccountViewController.swift
//  Tumblr rapid prototype
//
//  Created by Nicholas Naudé on 06/11/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    //outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var accountImageView: UIImageView!
    
    //Life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: accountImageView.frame.size.width, height: accountImageView.frame.size.height + 50)
    }

}
