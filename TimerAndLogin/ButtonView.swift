//
//  ButtonView.swift
//  TimerAndLogin
//
//  Created by Maxim Gridenko on 19.12.2023.
//

import SwiftUI

struct ButtonView: View {
   @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer){
            Text(timer.butonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
        }
        
        .frame(width: 200, height: 60)
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color.black, lineWidth: 4))
        
    }
        
}

//#Preview {
//    ButtonView( timer: <#TimeCounter#>)
//}
