//
//  ContentView.swift
//  Ex16_ObservableObject
//
//  Created by imac_kkn on 2021/10/27.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var myTimer = MyTimer()
    
    var body: some View {
        Text("Timer:\(myTimer.value)")
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
