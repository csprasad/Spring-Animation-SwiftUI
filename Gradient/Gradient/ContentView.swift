//
//  ContentView.swift
//  Gradient
//
//  Created by CSPrasad on 16/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var moving = false
    var body: some View {
        
        ZStack{
            Rectangle().fill(Gradient(colors:[Color.purple.opacity(0.6), Color.yellow.opacity(0.6)]))
            
            
            Ellipse()  // One
                .stroke(Gradient(colors:[Color.yellow, Color.purple]), lineWidth: 5)
                .frame(width: 50, height: 50)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: moving ? 150 : -180)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.05), value: moving)
           
            Image(systemName: "figure.fall") //Two
                .imageScale(.large)
                .foregroundColor(.purple)
                .frame(width: 20, height: 20)
                .rotation3DEffect(.degrees(0), axis: (x: 1, y: 1, z: 0))
                .offset(y: moving ? 150 : -180)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true), value: moving)
            
            Ellipse()  // Three
                .stroke(Gradient(colors:[Color.purple, Color.yellow]),lineWidth: 5)
                .frame(width: 80, height: 80)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: moving ? 150 : -180)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.1), value: moving)
            
            Ellipse()  // Four
                .stroke(Gradient(colors:[Color.yellow, Color.purple]),lineWidth: 5)
                .frame(width: 110, height: 110)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: moving ? 150 : -180)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.15), value: moving)
            
            Ellipse()  // Five
                .stroke(Gradient(colors:[Color.purple, Color.yellow]),lineWidth: 5)
                .frame(width: 140, height: 140)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: moving ? 150 : -180)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.2), value: moving)
            
            Ellipse()  // Six
                .stroke(Gradient(colors:[Color.yellow, Color.purple]),lineWidth: 5)
                .frame(width: 170, height: 170)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: moving ? 150 : -180)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.25), value: moving)
            
            Ellipse()  // Seven
                .stroke(Gradient(colors:[Color.purple, Color.yellow]),lineWidth: 5)
                .frame(width: 200, height: 200)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: moving ? 150 : -180)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.3), value: moving)
            
            Ellipse()  // Eight
                .stroke(Gradient(colors:[Color.yellow, Color.purple]), lineWidth: 5)
                .frame(width: 230, height: 230)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: moving ? 150 : -180)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.35), value: moving)
        
        }
        .onAppear{
            moving.toggle()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
