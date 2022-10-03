//
//  ViewController.swift
//  LinkedinLikeDemoSWIFT
//
//  Created by Gelbhaubenkakadu on 2016/2/16.
//  Copyright © 2016年 iOSatTaipeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgBackground: UIImageView!
    @IBOutlet var mainScrollView: UIScrollView!
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)
        imgBackground.alpha = 1 - (0.5 / 150 * scrollView.contentOffset.y)
    }
}
