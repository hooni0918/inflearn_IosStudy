//
//  SecondViewController.swift
//  02MyBasicControl
//
//  Created by 이지훈 on 2022/07/26.
//  Copyright © 2022 imac_kkn. All rights reserved.
//

import UIKit

//딜리게이트 = 이벤트 전달자: 프로토콜(자바 인터페이스)
//이벤트 전달자:이벤트 콜백함수
//프로토콜(이벤트 함수 구현시 주로 사용함)
class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfdata: UITextField!
    @IBOutlet weak var tvData: UITextView!
    @IBOutlet weak var progressview: UIProgressView!
    @IBOutlet weak var step: UIStepper!
    @IBOutlet weak var indicater: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //텍스트필드의 이벤트 처리자는 나다!
        //self는 자신의 클래스를 의미함
        //이게없으면 이벤트 생기지 않음
        tfdata.delegate = self
    }
//textfield에 입력될떄마다 호출됨
    func textField(_ textfield: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) ->Bool {

        print(textfield.text! )
        
        return true
    }
    //글자입력 완료될 떄 한번 호출됨(키보드 완료 버튼이나 포커스가 바뀔 떄)
    func textFieldDidEndEditing(_ textField: UITextField) -> Bool{print("textfieldshoiuldendedit")
        return true
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("fdsifniludshful")
        return true
    }
    //Action함수
    @IBAction func Onswitch(_ sender: UISwitch) {
        tvData.text = "스위치: " + String( sender.isOn )
    }
    
    @IBAction func OnSegment(_ sender: UISegmentedControl) {
        tvData.text = "세그먼트:" + String(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            progressview.progress = 0.3
            indicater.startAnimating()
        case 1:
            progressview.progress = 0.5
            indicater.isHidden = indicater.isHidden
        case 2:
            progressview.progress = 0.9
            indicater.stopAnimating()
        default:
            progressview.progress = 0

        }
    }
    @IBAction func Onslider(_ sender: UISlider) {
        print("슬라이더 변경됨", sender.value)
        progressview.progress = sender.value
    }
    
    @IBAction func Stepper(_ sender: UIStepper) {
        print("스텝퍼 변경됨", sender.value)
        
        tvData.text = String( Int(sender.value) )
    }
    
    
}
