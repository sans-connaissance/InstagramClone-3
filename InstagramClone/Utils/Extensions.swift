//
//  Extensions.swift
//  InstagramClone
//
//  Created by David Malicke on 10/4/21.
//

import Foundation
import UIKit

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
