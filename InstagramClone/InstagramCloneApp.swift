//
//  InstagramCloneApp.swift
//  InstagramClone
//
//  Created by David Malicke on 10/4/21.
//

import SwiftUI
import Firebase

@main
struct InstagramCloneApp: App {
    
    init() {
        FirebaseApp.configure()

        
        
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
