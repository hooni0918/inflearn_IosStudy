//
//  ContentView.swift
//  Ex03_Text
//
//  Created by imac_kkn on 2021/10/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //문자를 화면에 출력하는 컨트롤
        Text("UI입니다.\n스위프트 UI입니다.\n스위프트 UI")
            .fontWeight(.bold)
            .foregroundColor(Color.yellow)
            .multilineTextAlignment(.center)
            .padding(.all, 12.0)
            .font(.system(size: 30))
            .frame(width: 300, height: 300)
            .lineLimit(3)
            .border(/*@START_MENU_TOKEN@*/Color.purple/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            .background(Color.gray)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
