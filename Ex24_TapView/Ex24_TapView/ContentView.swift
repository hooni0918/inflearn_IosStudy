//
//  ContentView.swift
//  Ex24_TapView
//
//  Created by imac_kkn on 2021/11/07.
//

import SwiftUI

struct HomeView: View {
    @Binding var currentTab: Int
    
    var body: some View {
        VStack {
            Text("Home Tab")
                .font(.system(size:30, weight: .bold, design: .rounded))
            Button {
                print( self.currentTab )
                self.currentTab = 1
                print( self.currentTab )
            } label: {
                Text("Bookmark Tab")
            }

        }
    }
}

struct ContentView: View {
    @State private var currentTab: Int = 0
    
    var body: some View {
        TabView(selection: $currentTab) {
            HomeView(currentTab: self.$currentTab)
                .font(.system(size:30, weight: .bold, design: .rounded))
                .tabItem({
                    Image(systemName: "house.fill")
                    Text("home")
                })
                .tag(0)
            Text("Bookmark Tab")
                .font(.system(size:30, weight: .bold, design: .rounded))
                .tabItem({
                    Image(systemName: "bookmark.fill")
                    Text("Bookmark")
                })
                .tag(1)
            Text("Video Tab")
                .font(.system(size:30, weight: .bold, design: .rounded))
                .tabItem({
                    Image(systemName: "video.circle.fill")
                    Text("Video")
                })
                .tag(2)
        }
        //iOS 14.0 이상
        .onChange(of: currentTab){ index in
            print( index )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
