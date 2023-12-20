//
//  UserSettings.swift
//  TimerAndLogin
//
//  Created by Maxim Gridenko on 19.12.2023.
//

import Foundation
import SwiftUI

final class UserSettings: ObservableObject {
    @AppStorage("isLoggedIn") var isLoggedIn = false
    @AppStorage("name") var name = ""
}
