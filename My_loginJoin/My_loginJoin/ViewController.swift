//
//  ViewController.swift
//  My_loginJoin
//
//  Created by 이지훈 on 2022/07/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var LoginStatus: UILabel!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    //화면이 생성될 때 딱 한번만 호출됨
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //화면이 보일때마다 호출됨
    override func viewWillAppear(_ animated: Bool) {
        //로그인 상태 갱신
        if appDelegate.isLogin {
            LoginStatus.text = "로그인상태:로그인됨\(appDelegate.userInfo.id)"
        } else {
            LoginStatus.text = "로그인상태:로그인안됨"
        }
    }
    @IBAction func onBtnLogout(_ sender: UIButton) {
        appDelegate.isLogin = false //로그
        LoginStatus.text = "로그인상태:로그아웃됨"
    }
}

