//
//  RootView.swift
//  TimerAndLogin
//
//  Created by Maxim Gridenko on 19.12.2023.
//

import SwiftUI

struct RootView: View {
    @StateObject private var userSettings = UserSettings()
    
    var body: some View {
        Group{
            if userSettings.isLoggedIn {
                ContentView()
            }else {
                LogInView()
            }
        }
        .environmentObject(userSettings)
    }
}


#Preview {
    RootView()
}
