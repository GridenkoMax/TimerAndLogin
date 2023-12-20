//
//  LogInView.swift
//  TimerAndLogin
//
//  Created by Maxim Gridenko on 19.12.2023.
//

import SwiftUI

struct LogInView: View {
    @EnvironmentObject private var user: UserSettings
    @State private var name  = ""
    
    var body: some View {
        VStack{
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                
                Text("\(name.count)")
                    .foregroundColor(name.count >= 3 ? .green : .red )
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
            }
            Button(action: logIn) {
              Label("Ok", systemImage: "person.crop.circle.badge.checkmark")
                    .font(.title)
            }
            .disabled(name.count >= 3 ? false : true)
        }
    }
}
extension LogInView {
    private func logIn() {
        if !name.isEmpty {
            user.name = name
            user.isLoggedIn.toggle()
            
        }
    }
}

#Preview {
    LogInView()
}
