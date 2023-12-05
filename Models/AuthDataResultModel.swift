//
//  AuthDataResultModel.swift
//  ShowchatSignIn
//
//  Created by Aadit Bagdi on 11/30/23.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel {
    let uid : String
    let email : String?
    let photoURL : String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoURL = user.photoURL?.absoluteString
    }
}
