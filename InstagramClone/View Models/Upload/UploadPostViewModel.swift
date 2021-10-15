//
//  UploadPostViewModel.swift
//  InstagramClone
//
//  Created by David Malicke on 10/14/21.
//

import SwiftUI
import Firebase

class UploadPostViewModel: ObservableObject {
    

    
    
    
    func uploadPost(image: UIImage, caption: String) {
        
        guard let user = AuthViewModel.shared.currentUser else { return }
        
        guard let imageData = image.jpegData(compressionQuality: 0.5 ) else { return }
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")
        
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
                //downloads previously uploaded image into profileimage for user
                guard let imageURL = url?.absoluteString else { return }
                
                guard let uid = user.id else {return}
                
                let data = ["caption" : caption,
                            "timestamp" : Timestamp(date: Date()),
                            "likes" : 0,
                            "imageURL" : imageURL,
                            "ownerUID" : user.id,
                            "ownerImageURL" : user.profileImageURL,
                            "ownerUsername" : user.username ] as [String : Any]
                
                //uploading to firestore
                Firestore.firestore().collection("posts").addDocument(data: data) { error in
                    if let error = error {
                        print(error.localizedDescription)
                        return
                    }
                }
            }
        }
        
    }
}
