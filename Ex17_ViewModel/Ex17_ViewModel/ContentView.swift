//
//  ContentView.swift
//  Ex17_ViewModel
//
//  Created by imac_kkn on 2021/10/27.
//

import SwiftUI

//MVC( Model, View, Controller ) : 모델(데이타), 뷰(UI), 컨트롤(제어코드)로 화면을 구현하는 소프트웨어 UI 개발모델
//MVVM( Model, View, ViewModel ) : 모델(데이타), 뷰(UI), 뷰모델(의존성이 없는 중간참조영역)

//Model
struct User {
    var name: String
    var age: Int
}

//ViewModel
class ContentViewMode: ObservableObject {
    @Published var hong: User = User(name: "hong", age: 30)
}

//View
struct ContentView: View {
    @ObservedObject var contentViewModel = ContentViewMode()
    
    var body: some View {
        VStack {
            Text("name: \(self.contentViewModel.hong.name)")
            Text("age: \(self.contentViewModel.hong.age)")
            Button {
                self.contentViewModel.hong.name = "gildong"
                self.contentViewModel.hong.age = 40
            } label: {
                Text("Change Info")
            }
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
