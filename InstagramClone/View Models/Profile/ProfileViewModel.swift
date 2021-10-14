//
//  ProfileViewModel.swift
//  InstagramClone
//
//  Created by David Malicke on 10/14/21.
//

import SwiftUI
import Firebase

class ProfileViewModel: ObservableObject {
    
    @Published var user: User
    
    init(user: User) {
        self.user = user
        
    }
    
    func changeProfileImage(image: UIImage) {
        
        guard let imageData = image.jpegData(compressionQuality: 0.5 ) else { return }
        
        let ref = Storage.storage().reference(withPath: "/profile_images")
        
        ref.putData(imageData, metadata: nil) { (_, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            ref.downloadURL { (url, error) in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
            }
        }
    }
    
}
