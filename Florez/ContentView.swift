//
//  ContentView.swift
//  Florez
//
//  Created by Bodgar Jair Espinosa Miranda on 09/07/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext


    var body: some View {
        NavigationView {
            
            
            ZStack {
                Image("bg")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                Text("Select an item")
            }
           
        }
    }


}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
