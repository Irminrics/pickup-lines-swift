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
            StartBackgroundView(topColor: Color("lightpink"), bottomColor: Color("lightpink"))
            VStack {
                Spacer()
                LogoView()
                Spacer()
                TextfieldNameView()
                    if !name.isEmpty {
                        NavigationButtonView()
                    }

            }.offset(y: -50)
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

struct TextfieldNameView: View {
    @AppStorage("name") private var name = ""
    var body: some View {
        TextField("Enter your name", text: $name)
            .foregroundColor(Color("lightpink"))
            .frame(width: 280, height: 50)
            .background(Color.white)
            .cornerRadius(10)
            .multilineTextAlignment(.center)
            .padding(.bottom, 30)
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
                    .navigationTitle("")
                    .frame(width: 150, height: 50)
                    .background(Color.white)
                    .foregroundColor(Color("lightpink"))
                    .font(.system(size: 22, weight: .bold))
                    .cornerRadius(10)
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
            })
    }
}

struct LogoView: View {
    var body: some View {
        Image("pickuplines-logo")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


