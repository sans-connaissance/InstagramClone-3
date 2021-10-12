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
                MainView(selectedIndex: $selectedIndex)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
