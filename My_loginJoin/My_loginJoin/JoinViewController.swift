//
//  JoinViewController.swift
//  My_loginJoin
//
//  Created by 이지훈 on 2022/07/30.
//

import UIKit

class JoinViewController: UIViewController {
    
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPw: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfphone: UITextField!
    let appDelegate = UIApplication.shared.delegate as!
    AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onBtnJoin(_ sender: UIButton) {
        
        //약관동의여부 확인
        if appDelegate.isAgree == false
        {
            print("약관동의좀")
            return
        }
        
        let id = tfID.text
        let pw = tfPw.text
        let Name = tfName.text
        let Phone = tfphone.text
        
        //에외처리-사용할만한 데이터인지 확인
        if let safeID = id, let safePw = pw, let safeName = Name, let safephone = Phone {
            
            if safeID.count < 3 {
                print("아이디를입력하세요")
                return
            }
            
            if safePw.count < 4 {
                print("암호를입력하세요")
                return
            }
            
            if safeName.count < 3 {
                print("이름를입력하세요")
                return
            
        }
            
            if safephone.count < 3 {
                print("암호를입력하세요")
                return
            }
            appDelegate.userInfo.id = safeID
            appDelegate.userInfo.pw = safePw
            appDelegate.userInfo.name = safeName
            appDelegate.userInfo.phone = safephone
            print("회원가입 완요 ")
            
            self.navigationController?.popViewController(animated: true)
            
        }
        
        
        
            else {
            print("아이디나 암호나 이름 폰번호 틀림")
        }
    }
    
    

}
