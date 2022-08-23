//
//  ContentView.swift
//  Ex11_Slider
//
//  Created by imac_kkn on 2021/10/17.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Float = 0
    @State private var age: Float = 0
    
    var body: some View {
        VStack {
            Form {
                Slider(value: self.$count, in: 1...10) {
                    Text("Count")
                }
                Text("Count:\( Int( self.count ) )")
                
                Slider(value: self.$age, in: 0...150) {
                    Text("Age")
                }
                Text("Age:\(Int( self.age ))")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
