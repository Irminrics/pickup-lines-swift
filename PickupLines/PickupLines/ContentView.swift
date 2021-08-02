//
//  ContentView.swift
//  PickupLines
//
//  Created by Jun Kang on 1/8/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("name") private var name = ""
    var body: some View {
        NavigationView {
            ZStack {
                StartBackgroundView(topColor: .blue, bottomColor: Color.white)
                VStack {
                    Spacer()
                    StartWelcomeView()
                    TextfieldNameView()
                    if !name.isEmpty {
                        NavigationButtonView()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct StartBackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct StartWelcomeView: View {
    var body: some View {
        Text("Welcome")
            .foregroundColor(.white)
            .font(.system(size: 55, weight: .bold))
    }
}

struct TextfieldNameView: View {
    @AppStorage("name") private var name = ""
    var body: some View {
        TextField("Enter your name", text: $name)
            .frame(width: 280, height: 50)
            .border(Color.white)
            .background(Color.white)
            .cornerRadius(10)
            .multilineTextAlignment(.center)
            .padding(.bottom, 50)
            .onChange(of: self.name, perform: { value in
                if value.count > 20 {
                    self.name = String(value.prefix(20))
                }
            })
    }
}

struct NavigationButtonView: View {
    @AppStorage("name") private var name = ""
    @AppStorage("registered") private var registered = false
    var body: some View {
        NavigationLink (
            destination: LoginView(name: name).onAppear{registered=true},
            label: {
                Text("Let's go!")
                    .frame(width: 150, height: 50)
                    .background(Color.white)
                    .foregroundColor(Color.blue)
                    .font(.system(size: 22, weight: .bold))
                    .cornerRadius(10)
                    .navigationBarHidden(true)
            })
    }
}