//
//  TimeCounter.swift
//  TimerAndLogin
//
//  Created by Maxim Gridenko on 19.12.2023.
//

import Foundation
import Combine

final class TimeCounter: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()
    var counter = 3
    var butonTitle = "Start"
    
    var timer: Timer?
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        buttonDidTapped()
    }
    
    @objc
    private func updateCounter(){
        if counter > 0 {
            counter -= 1
        }else {
            killTimer()
            butonTitle = "Reset"
        }
        objectWillChange.send()
    }
    
    private func killTimer(){
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonDidTapped(){
        if butonTitle == "Reset" {
            counter = 3
            butonTitle = "Start"
        } else {
            butonTitle = "Wait..."
        }
        objectWillChange.send()
    }
    
}
