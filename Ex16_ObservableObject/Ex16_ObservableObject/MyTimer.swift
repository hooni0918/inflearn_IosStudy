//
//  MyTimer.swift
//  Ex16_ObservableObject
//
//  Created by imac_kkn on 2021/10/27.
//

import Foundation

class MyTimer: ObservableObject {
    
    @Published var value: Int = 0
    
    //클래스 생성자 함수 : 클래스 생성시 한번 호출됨.
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
}
