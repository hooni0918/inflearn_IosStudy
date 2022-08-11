//
//  ContentView.swift
//  01FirstApp
//
//  Created by 이지훈 on 2022/08/11.
//

import SwiftUI


//view protocol : 화면이 보이는 요소
struct ContentView: View {
    //some 예약어 : view 프로토콜을 준수하는 모든 뷰에대한 불투명(관용적인) 타입 허용
    var body: some View {
        Text("Hello, swiftUI!")
            .padding()
    }
}
//미리보기 화면 정의
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
