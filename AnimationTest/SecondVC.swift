//
//  SecondVC.swift
//  AnimationTest
//
//  Created by Joshua Ide on 16/02/2016.
//  Copyright © 2016 Fox Gallery Studios. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var imgFirst: UIImageView!
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        let imgFirst = UIImageView(image: UIImage(named: "bg01.jpg"))
        imgFirst.frame = view.frame
        imgFirst.contentMode = .ScaleAspectFill
        view.addSubview(imgFirst)
        super.view.bringSubviewToFront(btnBack)
        
        imageFadeIn(imgFirst)
    }

    @IBAction func onBackPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imageFadeIn(imageView: UIImageView) {
        let imgSecond = UIImageView(image: UIImage(named: "bg02.png"))
        imgSecond.frame = view.frame
        imgSecond.contentMode = .ScaleAspectFill
        imgSecond.alpha = 0.0
        
        view.insertSubview(imgSecond, aboveSubview: imageView)
        
        UIView.animateWithDuration(2.0, delay: 2.0, options: .CurveEaseInOut, animations: {
            imgSecond.alpha = 1.0
            }, completion: {_ in
                imageView.image = imgSecond.image
                imgSecond.removeFromSuperview()
        })
    }
}
