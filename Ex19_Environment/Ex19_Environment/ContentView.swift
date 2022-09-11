//
//  ContentView.swift
//  Ex19_Environment
//
//  Created by imac_kkn on 2021/10/27.
//

import SwiftUI


struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.locale) private var locale
    @Environment(\.calendar) private var calendar
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack {
            Text(colorScheme == .dark ? "Dark mode" : "Light mode")
            Text(locale.description)
            Text(calendar.description)
            Text(horizontalSizeClass == .compact ? "Compact" : "Regular")
            Text(verticalSizeClass == .compact ? "Compact" : "Regular")
            
            if verticalSizeClass == .regular {
                VStack {
                    Text("Alice")
                    Text("Bob")
                    Text("John")
                }
                .font(.headline)
                .background(.yellow)
            }else{
                VStack {
                    Text("Alice")
                    Text("Bob")
                    Text("John")
                }
                .font(.headline)
                .background(.green)
            }
            
            colorScheme == .dark ? Color.green.edgesIgnoringSafeArea(.all) : Color.yellow.edgesIgnoringSafeArea(.all)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.colorScheme, .light)
            ContentView()
                .environment(\.colorScheme, .dark)
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                .previewDisplayName("iPhone 12")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
                .previewDisplayName("iPhone 12 Pro Max")
        }
        
    }
}
