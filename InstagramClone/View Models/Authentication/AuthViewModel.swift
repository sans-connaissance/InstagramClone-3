//
//  AuthViewModel.swift
//  InstagramClone
//
//  Created by David Malicke on 10/10/21.
//

import Firebase
import SwiftUI

class AuthViewModel: ObservableObject {
    
    static let shared = AuthViewModel()
    
    func register(withEmail email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = result?.user else { return }
            print(user)
        }
     
        
    }
}
