//
//  ContentView.swift
//  04Stack
//
//  Created by 이지훈 on 2022/08/13.
//

import SwiftUI

struct MyText : View {
    var body: some View {
        Text("Hello, swift!")
            .padding() //16픽셀
            .border(Color.blue,width: 3)
            .background(Color.green)
    }
}

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack{
                MyText()
                MyText()
                MyText()
            
            }
                HStack() {
                MyText()
                MyText()
                MyText()
        
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
