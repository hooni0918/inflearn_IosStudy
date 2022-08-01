//
//  ViewController.swift
//  ViewStruct
//
//  Created by 이지훈 on 2022/07/27.
//
//ios화면 이동하는법
// 1. 네비게이션 컨트롤러 이용(Navigator) -권장됨 -수평이동
// 코드로 이동(Push와 Pop), segue로 이동
//수평적인 이동: 카카오택시 -> 예약:자기정보->콜정보->옵션1,2,3...->


//2. 팝업창으로 이동 : 간단한 이벤트 화면(로그인,회원가입)-수직이동
// 코드로 이동(Present,Dismiss), segue로 이동
//간단히 떳다가 사라지는 화면

//네비게이션 뷰컨트롤러 사용방법
/*1. 다음화면으로 이동하기
 self.navigationController?.pushViewController
 2.이전화면으로 이동하기
popViewController
 3.맨앞으로 이동하기(루트뷰로)
 poptoRootviewController(NewVC animated:true)
 4.특정번쨰 뷰로 이동하기(2번쨰,3번째)
 poptoviewController(NewVC animated:true)
 5.특정번쨰 뷰를 삭제할 때
 navigationController?viewControllers 배열에서 삭제.remove(at:)
 6.특정뷰를 중간에 추가
 
 navigationController?viewControllers 배열에서 삭제.insert(at:)
 
 */

/*
 뷰컨트롤러의 수명주기(life Cycle)
 viewDidLoad : 뷰가 생성될 때 한번만 호출됨(초기화 용도)
 viewWillAppear :  뷰가 화면에 보일떄마다 호출됨(화면갱신용도)
 viewDidAppear : 뷰가 화면에 보이고나서 매번 호출됨
 viewWillDisappear : 뷰가 화면에 사라지기 전마다 호출됨(데이터 전달)
 viewDidDisappear : 뷰가 화면에 사라지고나서 매번 호출됨
 viewWillLayoutSubviews : 컨트롤(서브뷰)들의 레이아웃을 잡기전에 호출됨.
 viewDidLayoutSubview : 컨트롤들의 레이아웃을 잡고나서 호출됨
 
 
 
 */

//뷰컨트롤러간 데이터 전달(창조)하는법
//1. 전역변수를 이용한다(앱내 모든 vc에서 접근가능)
//2. A클래스(VC)에서 B클래스로 이동


import UIKit

class ViewController: UIViewController {
//전역변수를 참조하는법
    let appDelegate = UIApplication.shared.delete as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
//전역변수 참조하는곳
        appDelegate.globalData = "전역변수 설정함"
    }
    //네비게이션 컨트롤러에서 segue로 이동하기
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let vc = segue.destination as! SecondViewController
        }
    }
    
    
    //네비게이션 컨트롤러에서 코드로 이동하기
    @IBAction func OnBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as!
        SecondViewController; self.navigationController?.pushViewController(newVC, animated: true)
        
    }
    @IBAction func onBtnpopup(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "PopupVC") as!
        PopupViewController; self.navigationController?.pushViewController(newVC, animated: true)
        
        self.present(newVC, animated: true , completion: nil)
    }
    
}

