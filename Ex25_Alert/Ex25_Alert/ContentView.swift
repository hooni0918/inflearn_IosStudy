//
//  ContentView.swift
//  Ex25_Alert
//
//  Created by imac_kkn on 2021/11/07.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    
    var body: some View {
        VStack {
            Button {
                self.showingAlert1 = true
            } label: {
                Text("Show Alert1")
            }
            .alert(isPresented: $showingAlert1) {
                Alert(title: Text("Title"),
                      message: Text("알럿메시지입니다."),
                      dismissButton: .default(Text("확인")))
            }

            Button {
                self.showingAlert2 = true
            } label: {
                Text("Show Alert2")
            }
            .alert(isPresented: $showingAlert2) {
                Alert(title: Text("Title"),
                    message: Text("알럿메시지입니다."),
                    primaryButton: .destructive(Text("확인"), action: {
                        print("Ok tapped")
                    }),
                    secondaryButton: .cancel(Text("취소"), action: {
                        print("Cancel tapped")
                    }))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
