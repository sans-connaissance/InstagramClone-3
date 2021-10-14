//
//  ContentView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/4/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var authViewModel: AuthViewModel
    @State var selectedIndex = 0
    
    var body: some View {
        Group {
            if authViewModel.userSession == nil {
                SignInView()
            } else {
                if let user = authViewModel.currentUser {
                    MainView(user: user, selectedIndex: $selectedIndex)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
