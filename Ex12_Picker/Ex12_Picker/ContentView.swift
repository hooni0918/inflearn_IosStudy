//
//  ContentView.swift
//  Ex12_Picker
//
//  Created by imac_kkn on 2021/10/17.
//

import SwiftUI

struct ContentView: View {
    @State private var nameIndex = 0
    
    var names = ["tom", "john", "hana", "peter"]
    
    var body: some View {
        
        VStack {
            NavigationView {
                Form {
                    Section {
                        Picker(selection: self.$nameIndex, label: Text("Names")) {
                            ForEach(0 ..< names.count ) { index in
                                Text(self.names[index]).tag(index)
                            }
                        }
                        //iOS 14.0부터 지원
                        //.pickerStyle(SegmentedPickerStyle())
                    }
                }.navigationBarTitle(Text("Names"))
            }
            Text("Picker Selected: \(nameIndex)")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
