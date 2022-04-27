//
//  ContentView.swift
//  GlassmorfismSwiftUI
//
//  Created by Nazar Babyak on 04.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("Color3"), Color.gray.opacity(0.3)], startPoint: .topLeading, endPoint: .trailing)

            
            LinearGradient(colors: [Color("Color1").opacity(0.4), Color("Color2").opacity(0.5)], startPoint: .topTrailing, endPoint: .bottomLeading)
            
            ZStack {
                
                Circle()
                    .frame(width: 400)
                    .offset(x: 50, y: -300)
                    .foregroundColor(Color("Color3").opacity(0.3))
                    .blur(radius: 5)
                Circle()
                    .frame(width: 350)
                    .offset(x: -100, y: 350)
                    .foregroundColor(Color("Color1").opacity(0.3))
                    .blur(radius: 10)
                Circle()
                    .frame(width: 450)
                    .offset(x: 150, y: 150)
                    .foregroundColor(Color("Color4").opacity(0.2))
                    .blur(radius: 7)
                
                PopupView()
            }
        }
        .background(Image("aaa").resizable().scaledToFill())
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PopupView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white.opacity(0.65)
                .frame(width: 350, height: 450)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .circular))
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 15)
                .blur(radius: 2)
            
            VStack(alignment: .leading, spacing: 20){
                Text("Glassmorfism")
                    .font(.system(size: 30, weight: .semibold, design: .monospaced))
                
                Text("Glassmorfism Glassmorfism Glassmorfism Glassmorfism Glassmorfism")
                    .font(.system(size: 20, weight: .light, design: .monospaced))
                
                Text("Glassmorfism Glassmorfism Glassmorfism Glassmorfism Glassmorfism Glassmorfism Glassmorfism Glassmorfism Glassmorfism")
                    .font(.system(size: 15, weight: .ultraLight, design: .monospaced))
            }
            .padding()
            .frame(width: 300, height: 450)
            .opacity(0.85)
        }
    }
}
