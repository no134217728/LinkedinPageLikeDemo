//
//  ViewController.swift
//  LinkedinLikeDemoSWIFT
//
//  Created by Gelbhaubenkakadu on 2016/2/16.
//  Copyright © 2016年 iOSatTaipeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet var imgBackground: UIImageView!
    @IBOutlet var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainScrollView.delegate = self;
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)
        imgBackground.alpha = 1 - (0.5 / 150 * scrollView.contentOffset.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
