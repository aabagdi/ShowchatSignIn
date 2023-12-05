//
//  EmailViewModel.swift
//  ShowchatSignIn
//
//  Created by Aadit Bagdi on 11/30/23.
//

import Foundation

@MainActor
final class EmailViewModel : ObservableObject {
    @Published var username : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
    
    
    func signIn() async throws {
        guard !username.isEmpty, !email.isEmpty, !password.isEmpty else {
            print("Missing information")
            return
        }
        try await AuthManager.shared.signInUser(email: email, password: password)
    }
    
    func signUp() async throws {
        guard !username.isEmpty, !email.isEmpty, !password.isEmpty else {
            print("Missing information")
            return
        }
        try await AuthManager.shared.createUser(email: email, password: password)
    }
}
