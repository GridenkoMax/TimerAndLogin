//
//  LogInView.swift
//  TimerAndLogin
//
//  Created by Maxim Gridenko on 19.12.2023.
//

import SwiftUI

struct LogInView: View {
    @EnvironmentObject private var user: UserSettings
    
    
    var body: some View {
        VStack{
            HStack {
                TextField("Enter your name", text: user.$name)
                    .multilineTextAlignment(.center)
                
                Text("\(user.name.count)")
                    .foregroundColor(user.name.count >= 3 ? .green : .red )
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
            }
            Button(action: logIn) {
              Label("Ok", systemImage: "person.crop.circle.badge.checkmark")
                    .font(.title)
            }
            .disabled(user.name.count >= 3 ? false : true)
        }
    }
}
extension LogInView {
    private func logIn() {
        if !user.name.isEmpty {
            user.name = user.name
            user.isLoggedIn.toggle()
            
        }
    }
}

#Preview {
    LogInView()
}
