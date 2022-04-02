//
//  iOSStatesApp.swift
//  iOSStates
//
//  Created by Abduqaxxor on 2/4/22.
//

import SwiftUI

@main
struct iOSStatesApp: App {
    let persistenceController = PersistenceController.shared
    let settings = UserSettings()
    
    var body: some Scene {
        WindowGroup {
            MainScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(settings)
        }
    }
}
