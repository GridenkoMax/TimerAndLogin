//
//  LogOutButtom.swift
//  TimerAndLogin
//
//  Created by Maxim Gridenko on 19.12.2023.
//

import SwiftUI

struct LogOutButtom: View {
    @EnvironmentObject private var user: UserSettings
    
    var body: some View {
        Button(action: {user.isLoggedIn = false}){
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
        }
        
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color.black, lineWidth: 4))
        
    }
        }
    

#Preview {
    LogOutButtom()
}
