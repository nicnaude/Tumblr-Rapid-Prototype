//
//  SearchViewController.swift
//  Tumblr rapid prototype
//
//  Created by Nicholas Naudé on 06/11/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var loaderImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var trendingFeed: UIImageView!

    //Loader assets
    var loadingImage1: UIImage!
    var loadingImage2: UIImage!
    var loadingImage3: UIImage!
    var loaderImages: [UIImage]!
    var imageSequence: UIImage!
    
    //Lifecylce methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingImage1 = UIImage(named: "loading-1")
        loadingImage2 = UIImage(named: "loading-2")
        loadingImage3 = UIImage(named: "loading-3")
        loaderImages = [loadingImage1, loadingImage2, loadingImage3]
        imageSequence = UIImage.animatedImage(with: loaderImages, duration: 1.5)
        loaderImageView.image = imageSequence

        
        scrollView.contentSize = CGSize(width: trendingFeed.frame.size.width, height: trendingFeed.frame.size.height + 760)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.trendingFeed.alpha = 0
        self.loaderImageView.alpha = 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
             delay(1) {
            self.trendingFeed.alpha = 1
            self.loaderImageView.alpha = 0
        }
    }
}
