//
//  FirebaseAuthApp.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 30/6/21.
//

import SwiftUI

@main
struct FirebaseAuthApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var tabbarViewModel = TabbarViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(tabbarViewModel)
        }
    }
}
