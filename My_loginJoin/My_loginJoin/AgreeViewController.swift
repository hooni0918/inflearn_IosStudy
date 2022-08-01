//
//  AgreeViewController.swift
//  My_loginJoin
//
//  Created by 이지훈 on 2022/07/30.
//

import UIKit

class AgreeViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onSwitch(_ sender: UISwitch) {
        if sender.isOn{
            appDelegate.isAgree = true
            
        }else{
            appDelegate.isAgree = false
        }
            
    }
    
    @IBAction func onBtnDone(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
