//
//  MySideMenuNavigationController.swift
//  Sidemenu
//
//  Created by 이지훈 on 2022/08/06.
//

import UIKit
import SideMenu

class MySideMenuNavigationController: SideMenuNavigationController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.mySidemenu = self
        //설정변경
        self.menuWidth = 320
        self.leftSide = false
        self.presentationStyle = .menuSlideIn
        
    }
    

}
