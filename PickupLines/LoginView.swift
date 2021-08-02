//
//  LoginView.swift
//  PickupLines
//
//  Created by Jun Kang on 2/8/21.
//
import SwiftUI
import GameKit

struct LoginView : View {
    var name: String
    var pickupLinePool = PickupLinePool()
    var colorPool = ColorPool()
    @State var pickupLines = "I hope you know CPR, because you just took my breath away!"
    @State var bgColor = Color.black
    
    var body: some View {
        NavigationView {
            ZStack {
                LoginBackgroundView(bgColor: bgColor)
                VStack {
                    LoginWelcomeView()
                    PickupLineView(pickupLines: pickupLines)
                    Spacer()
                }
            }
            .onTapGesture {
                randomize()
            }
            .onAppear(perform: {
                randomize()
            })
        }
    }
    
    func randomize() {
        self.pickupLines = pickupLinePool.randomPickupLine()
        self.bgColor = colorPool.randomColor()
    }
}

struct LoginBackgroundView: View {
    var bgColor: Color
    var body: some View {
        bgColor
            .ignoresSafeArea()
            .navigationBarHidden(true)
    }
}

struct LoginWelcomeView: View {
    @AppStorage("name") private var name = ""
    @AppStorage("registered") private var registered = false
    var body: some View {
        NavigationLink (
            destination: ContentView().onAppear{registered=false},
            label: {
                Text("Welcome, \(name) !")
                    .frame(width: 400, height: 50)
                    .font(.system(size: 22))
                    .foregroundColor(.white)
            })
    }
}

struct PickupLineView: View {
    var pickupLines: String
    var body: some View {
        Text(pickupLines)
            .frame(width: 300, height: 650)
            .font(.system(size: 45))
            .foregroundColor(.white)
    }
}


