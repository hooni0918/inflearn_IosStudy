
import SwiftUI

struct MyText : View {
    var body : some View {
        Text("Hello, SwiftUI!")
            .padding() //16pixel
            .border(Color.blue, width: 3)
            .background(Color.green)
    }
}

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack { //수평방향 정렬
                MyText()
                MyText()
                MyText()
            }
            Divider()
            HStack(alignment: .center, spacing: 10) {
                MyText()
                MyText()
                MyText()
            }
            Divider()
            VStack { //수직방향 정렬
                MyText()
                MyText()
                MyText()
            }
            Divider()
            ZStack { //상하방향 정렬
                Color.yellow.edgesIgnoringSafeArea(.all)
                Color.red.frame(width: 200, height: 200)
                Color.blue.frame(width: 100, height: 100)
            }
            .padding()
            .border(Color.red, width: 3)
            Divider()
            HStack(alignment: .bottom, spacing: 10) {
                Text("Hello").font(.caption)
                Text("Hello")
                Text("Hello").font(.title)
                Text("Hello").font(.largeTitle)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
