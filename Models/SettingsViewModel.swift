//
//  SettingsViewModel.swift
//  ShowchatSignIn
//
//  Created by Aadit Bagdi on 12/1/23.
//

import Foundation


@MainActor
final class SettingsViewModel : ObservableObject {
    
    func signOut() throws {
        try AuthManager.shared.signOut()
    }
    
}
