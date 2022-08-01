//
//  SecondViewController.swift
//  ViewStruct
//
//  Created by 이지훈 on 2022/07/27.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//전역변수참조하여 출력함
        print 
    }
    
    @IBAction func onBtn(_ sender: UIButton) {
            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as!
            ThirdViewController; self.navigationController?.pushViewController(newVC, animated: true)
    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
