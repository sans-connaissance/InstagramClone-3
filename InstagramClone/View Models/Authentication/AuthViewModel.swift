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
    
    @Published var userSession: Firebase.User?
    @Published var currentUser: User?
    
    static let shared = AuthViewModel()
    
    //allows people to stay signed in
    init() {
        userSession = Auth.auth().currentUser
        fetchUser()
        
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = result?.user else { return }
            
            self.userSession = user
            self.fetchUser()
        }
        
    }
    
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
                self.userSession = user
                self.fetchUser()
                print("DEBUG: USER CREATED" )
            }
            
        }
     
        
    }
    
    func logout() {
        self.userSession = nil
        
        try? Auth.auth().signOut()
        
    }
    
    func fetchUser() {
        
        guard let uid = userSession?.uid else { return }
        
        Firestore.firestore().collection("users").document(uid).getDocument { (snap, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let user = try? snap?.data(as: User.self) else { return }
            self.currentUser = user
        }
        
    }
}
