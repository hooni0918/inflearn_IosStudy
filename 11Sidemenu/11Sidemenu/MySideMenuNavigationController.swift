//  MySideMenuNavigationController.swift

import UIKit
import SideMenu

class MySideMenuNavigationController: SideMenuNavigationController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.mySidemenu = self
        
        //설정 변경
        self.menuWidth = 200
        self.leftSide = true
        self.presentationStyle = .menuSlideIn
    }
    

}
