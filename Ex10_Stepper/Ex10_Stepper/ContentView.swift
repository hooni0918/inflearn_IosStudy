//
//  ContentView.swift
//  Ex10_Stepper
//
//  Created by imac_kkn on 2021/10/17.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    @State private var age: Int = 0
    
    func incrementStepper() {
        print("incrementStepper")
        self.age += 1
    }
    func decrementStepper() {
        print("decremantSteppe")
        self.age -= 1
    }
    var body: some View {
        VStack {
            Form {
                Stepper(value: self.$count, in: 0...10) {
                    Text("Count")
                }
                Text("Count:\(self.count)")
                
                Stepper(onIncrement: incrementStepper, onDecrement: decrementStepper) {
                    Text("Age")
                }
                Text("Count:\(self.age)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
