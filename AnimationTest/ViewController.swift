//
//  ViewController.swift
//  AnimationTest
//
//  Created by Joshua Ide on 15/02/2016.
//  Copyright © 2016 Fox Gallery Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var lblHeading: UILabel!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogIn: UIButton!
    @IBOutlet weak var constrXlblHeading: NSLayoutConstraint!
    @IBOutlet weak var constrXtxtUsername: NSLayoutConstraint!
    @IBOutlet weak var constrXtxtPassword: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        constrXlblHeading.constant -= view.bounds.width
        constrXtxtPassword.constant -= view.bounds.width
        constrXtxtUsername.constant -= view.bounds.width
        btnLogIn.alpha = 0.0
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.5, delay: 0.3, options: UIViewAnimationOptions.CurveEaseOut, animations: {
                self.constrXlblHeading.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.6, options: UIViewAnimationOptions.CurveEaseOut, animations: {
                self.constrXtxtUsername.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.7, options: UIViewAnimationOptions.CurveEaseOut, animations: {
                self.constrXtxtPassword.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 1.3, options: UIViewAnimationOptions.CurveEaseOut, animations: {
                self.btnLogIn.alpha = 1.0
                self.view.layoutIfNeeded()
            }, completion: nil)
    }

}

