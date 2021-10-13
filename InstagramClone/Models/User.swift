//
//  User.swift
//  InstagramClone
//
//  Created by David Malicke on 10/11/21.
//

import Firebase
import FirebaseFirestoreSwift

struct User: Decodable, Identifiable {
    
    @DocumentID var id: String?
    
    let username: String
    let email: String
    let fullname: String
    let profileImageURL: String?

    
    
}


