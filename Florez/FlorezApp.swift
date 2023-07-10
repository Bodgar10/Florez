//
//  FlorezApp.swift
//  Florez
//
//  Created by Bodgar Jair Espinosa Miranda on 09/07/23.
//

import SwiftUI

@main
struct FlorezApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
