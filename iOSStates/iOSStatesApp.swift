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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
