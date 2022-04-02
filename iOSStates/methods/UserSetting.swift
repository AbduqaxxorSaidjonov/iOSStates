//
//  UserSetting.swift
//  iOSStates
//
//  Created by Abduqaxxor on 2/4/22.
//

import Foundation

class UserSettings: ObservableObject{
    @Published var email: String = ""
    @Published var password: String = ""
}
