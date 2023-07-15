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
                HStack {
                    ButtonFlorez(buttonStyle: .special, title: "Iniciar sesion")
                    ButtonFlorez(buttonStyle: .principal, title: "REGISTRARSE")
                }
            }
           
        }
    }


}


struct ButtonFlorez: View {
    
    enum ButtonStyle {
        case principal
        case secondary
        case special
        case promotion
        case promotion2
        case promotion3
        
        var backgroundColor: Color {
            switch self {
            case .special:
                    return .clear
            case .secondary:
                return .white
            case .principal:
                return .pink
            case .promotion, .promotion2, .promotion3:
                return .orange
            }
        }
        
        var textColor: Color {
            switch self {
            case .special:
                    return .pink
            case .secondary:
                return .pink
            case .principal:
                return .white
            case .promotion, .promotion2, .promotion3:
                return .white
            }
        }
        
    }
    
    
    var buttonStyle: ButtonStyle
    var title: String
    
    init(buttonStyle: ButtonStyle, title: String) {
        self.buttonStyle = buttonStyle
        self.title = title
    }
    
    var body: some View {
        Button {
            print("Click")
        } label: {
            Text(title.uppercased())
                .foregroundColor(buttonStyle.textColor)
        }
        .background(buttonStyle.backgroundColor)
        .cornerRadius(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
