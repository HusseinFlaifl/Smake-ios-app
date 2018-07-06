//
//  ChannelVC.swift
//  Smake
//
//  Created by Hussain on 7/6/18.
//  Copyright © 2018 Hussain. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60 // To spicfy the width of slide menu
    }

}
