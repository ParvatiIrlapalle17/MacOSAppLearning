//
//  MacLearnApp.swift
//  MacLearn
//
//  Created by Apple on 28/12/24.
//

import SwiftUI

@main
struct MacLearnApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
