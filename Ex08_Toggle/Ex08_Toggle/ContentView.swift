//
//  ContentView.swift
//  Ex08_Toggle
//
//  Created by imac_kkn on 2021/10/17.
//

import SwiftUI

struct ContentView: View {
    //State변수 : 컨트롤뷰와 변수 사이의 데이타를 공유하는 변수.
    @State private var isToggleOn = false
    
    var body: some View {
        VStack {
            Toggle(isOn: self.$isToggleOn) {
                Text("Toggle")
            }
            .frame(width:110)
            
            Divider()
            
            if self.isToggleOn == true {
                Text("Toggle On")
            }else{
                Text("Toggle Off")
            }
            
            Divider()
            
            Toggle(isOn: self.$isToggleOn) {
                Text("Toggle")
            }
            .frame(width:110)
            .padding()
            .toggleStyle(SwitchToggleStyle(tint: Color.orange))
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
