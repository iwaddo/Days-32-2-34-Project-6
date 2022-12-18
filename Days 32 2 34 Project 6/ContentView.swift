//
//  ContentView.swift
//  Days 32 2 34 Project 6
//
//  Created by Ian Waddington on 03/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount1 = 0.0
    @State private var animationAmount2 = 0.0
    @State private var animationAmount3 = 0.0
    @State private var animationAmount4 = 0.0
    
    @State private var pressedButton:Int = -1
    
    var body: some View {
        HStack {
            VStack{
                Button("Tap Me") {
                    withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                        animationAmount1 = 360
                    }
                }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(animationAmount1), axis: (x: 0.0, y:1, z:0))
                
                Text("AM1: \(animationAmount1)")
                
                Button("Tap Me") {
                    withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                        animationAmount2 = 360
                    }
                }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(animationAmount2), axis: (x: 0.0, y:1, z:0))
                
                Text("AM2: \(animationAmount2)")
                
                Button("Tap Me") {
                    withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                        animationAmount3 = 360
                    }
                }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(animationAmount3), axis: (x: 0.0, y:1, z:0))
                
                Text("AM3: \(animationAmount3)")
            }
            VStack{
                ForEach(1..<4) { number in
                    Button("Tap Me") {
                        withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                            animationAmount4 = 360
                            pressedButton = number
                        }
                        
                    }
                    .padding(50)
                    .background(.blue)
                    .foregroundColor(.white)
                    //                    .clipShape(Circle())
                    .clipShape(Rectangle())
                    .rotation3DEffect(.degrees(pressedButton == number ? animationAmount4 : 0), axis: (x: 0.0, y:1, z:0))
                    
                    Text("AM4: \(animationAmount4)")
                    Text("Number: \(number)")
                    Text("pressedButton: \(pressedButton)")
                }
            }
            Button { pressedButton = -1 } label: { Text("Reset") }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
