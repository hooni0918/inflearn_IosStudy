//
//  ContentView.swift
//  Ex06_Image
//
//  Created by imac_kkn on 2021/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //가로든 세로든 이미지가 큰 쪽이 테두리에 닿으면 크기가 정해짐.
            Image("waterfall")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Divider()
            
            Image("waterfall2")
                .resizable()
                .scaledToFit()
                .frame(width: 250.0, height: 250.0, alignment: .top)
            
            Image(systemName: "play.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.red)
            
            Divider()
            
            Text("WaterFall")
                .background( Image("waterfall")
                                .resizable()
                                .frame(width: 200, height: 200, alignment: .center) )
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.white)
                .clipShape(Circle())
                .shadow( radius: 10 )
                .overlay(Circle().stroke(Color.red, lineWidth: 5))
                
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
