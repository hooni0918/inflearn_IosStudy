//
//  ForthViewController.swift

import UIKit

class ForthViewController: UIViewController {

    let appDelegate = UIApplication.shared as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        appDelegate.myTabBar = self
        self.delegate = self
        
    }
    func tabBarController(_)
    
}
