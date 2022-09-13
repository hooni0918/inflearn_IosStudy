//
//  ContentView.swift
//  Ex21_NavigationView
//
//  Created by imac_kkn on 2021/11/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            NavigationView {
//                Text("Main View")
//                    //iOS 14.0 이후부터
//                    .navigationTitle("Title")
//                    //automatic : 이전뷰의 타이틀 속성을 따라감.
//                    //large : 상단왼쪽 타이틀
//                    //inline : 상단중앙 타이틀
//                    .navigationBarTitleDisplayMode(.inline)
//            }
//            NavigationView {
//                Text("Main View")
//                    //iOS 13.2 이전까지
//                    .navigationBarTitle("Title", displayMode: .inline)
//            }
//            NavigationView {
//                NavigationLink(destination: Text("Second View")) {
//                    Text("Second View~")
//                }
//                .navigationTitle("Main View")
//            }
//            NavigationView {
//                NavigationLink(destination: SecondView() ) {
//                    Text("Second View~")
//                }
//                .navigationTitle("Main View")
//            }
//            NavigationView {
//                NavigationLink(destination: SecondView() ) {
//                    Text("Second View~")
//                }
//                .navigationTitle("Main View")
//                .navigationBarItems(leading: Button(action: {
//                    print("Home button clicked!")
//                }, label: {
//                    Text("Home")
//                }), trailing: Button(action: {
//                    print("Edit button clicked!")
//                }, label: {
//                    Text("Edit")
//                }))
//            }
//            NavigationView {
//                List(0..<100) { row in
//                    NavigationLink(destination: Text("Detail \(row)")) {
//                        Text("Row \(row)")
//                    }
//                }
//                .navigationTitle("ListView")
//            }
            NavigationView {
                NavigationLink(destination: SecondView(), label: {
                    Image(systemName: "play")
                        //original : 이미지의 원래 색상
                        //template : 단색으로 표현
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.orange)
                })
                .navigationTitle("MainView")
            }
        }
    }
}

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.yellow
            Text("Second View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
