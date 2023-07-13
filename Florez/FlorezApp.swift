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
            
<<<<<<< HEAD
=======
            print("esto es una prueba")
>>>>>>> ad0a174c89b69474295a38c97eb773f2bb044789
        }
    }
}
