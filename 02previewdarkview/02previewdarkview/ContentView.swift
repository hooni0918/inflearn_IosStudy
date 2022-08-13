//
//  ContentView.swift
//  02previewdarkview
//
//  Created by 이지훈 on 2022/08/12.
//


import SwiftUI

struct ContentView: View {
    //environment 속성래퍼: 환경설정을 읽어오는 어노테이션
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text("Hello, swiftUI!")
        //기본컨텐츠여백
            .padding(.all, 30.0)
        //배경 색상
            .background(colorScheme == .light ? Color.white : Color .black)
        //콘텐츠 색상
            .foregroundColor(colorScheme == .light ? Color.black : Color .white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            //기본모드뷰
            ContentView()
                .environment(\.colorScheme, .light)

            //다크모드뷰
            ContentView()
                .environment(\.colorScheme, .dark)

        }
    }
}
