//
//  AuthViewModel.swift
//  InstagramClone
//
//  Created by David Malicke on 10/10/21.
//

import Firebase
import SwiftUI
import CoreMedia

class AuthViewModel: ObservableObject {
    
    static let shared = AuthViewModel()
    
    func register(withEmail email: String, password: String, username: String, fullname: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }

            
            guard let user = result?.user else { return }
            
            
            let data = ["email": email,
                        "username": username,
                        "fullname": fullname,
                        "uid": user.uid]
            
            Firestore.firestore().collection("users").document(user.uid).setData(data) { error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                print("DEBUG: USER CREATED" )
            }
            
        }
     
        
    }
}
