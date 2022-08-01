//
//  MyTabberController.swift
//  TabBar


import UIKit

class MyTabberController: UITabBarController,UITabBarControllerDelegate {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.myTabBar = self
        
        
    }
    


}
