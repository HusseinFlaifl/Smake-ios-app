//
//  ChatVC.swift
//  Smake
//
//  Created by Hussain on 7/6/18.
//  Copyright © 2018 Hussain. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController() , action :#selector(SWRevealViewController.revealToggle(_:)),for:.touchUpInside)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
    }

   }
