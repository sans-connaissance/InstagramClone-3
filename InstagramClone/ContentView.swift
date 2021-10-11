//
//  ContentView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RegisterView().environmentObject(AuthViewModel.shared)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
