//
//  LoginViewController.swift
//  My_loginJoin
//
//  Created by 이지훈 on 2022/07/30.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPW: UITextField!
    let appDelegate = UIApplication.shared.delegate as!
    AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBtnLogin(_ sender: UIButton) {
        //통신을 통해서 서버에 아이디/암호를 전달하고 로그인 처리결과를 알아온다.
        let id = tfID.text;
        let pw = tfPW.text;
        
            //예외처리: 아이디와 암호가 제대로 입력되었는지 확인
        if let safeId = id , let saftPW = pw {
            //true : safeID와 safePW가 모두 정상값(nil이 아님)
            if safeId.count < 3 || saftPW.count < 4 {
                print("아이디나 암호를 확인 후 입력하세요")
                return
            }
            //통신하는곳..
            appDelegate.userInfo.id = safeId
            appDelegate.userInfo.pw = saftPW
            
            appDelegate.isLogin = true //로그인성공~
            
            self.navigationController?.popViewController(animated: true)
            
            
        }else{
            //false :
            print("틀림")
        }
        
        }
    
}

