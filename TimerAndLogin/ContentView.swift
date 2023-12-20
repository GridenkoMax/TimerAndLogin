//
//  ContentView.swift
//  TimerAndLogin
//
//  Created by Maxim Gridenko on 19.12.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var user: UserSettings
    
    var body: some View {
        VStack {
            Text("Hi,\(user.name )")
                .font(.largeTitle)
                .padding(.top, 100)
  
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
   
            ButtonView(timer: timer)
                Spacer()
            LogOutButtom()
 
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environmentObject(UserSettings())
}


