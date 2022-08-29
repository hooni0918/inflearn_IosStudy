//
//  ContentView.swift
//  Ex14_Form
//
//  Created by imac_kkn on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    let previewOptions: Array<String> = [ "Always", "When Unlocked", "Never" ]
    
    var body: some View {
        //UI 표준양식을 지원하는 뷰 - FormView
        NavigationView {
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: self.$username)
                    Toggle(isOn: self.$isPrivate) {
                        Text("Private Account")
                    }
                }
                
                Section(header: Text("NOTIFICATIONS")) {
                    Toggle(isOn: self.$notificationsEnabled) {
                        Text("Enabled")
                    }
                    Picker(selection: self.$previewIndex, label: Text("Show Previews")) {
                        ForEach(0 ..< previewOptions.count) { index in
                            Text(self.previewOptions[index])
                        }
                    }
                }
                
                Section(header: Text("ABOUT")) {
                    HStack{
                        Text("Version")
                        Spacer()
                        Text("2.0.1")
                    }
                }
                
                Section {
                    Button(action: {
                        print("button clicked")
                    }) {
                        Text("Reset All Settings")
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
