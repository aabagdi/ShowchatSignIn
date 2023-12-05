//
//  SettingsView.swift
//  ShowchatSignIn
//
//  Created by Aadit Bagdi on 12/1/23.
//

import SwiftUI

struct SettingsView: View {
    @StateObject var viewModel : SettingsViewModel = SettingsViewModel()
    @Binding var showSignInView : Bool
    
    var body: some View {
        List {
            Button("Log out") {
                Task {
                    do {
                        try viewModel.signOut()
                        self.showSignInView = true
                    } catch {
                        print("Error logging out")
                    }
                }
            }
        }
        .navigationBarTitle("Settings")
    }
}

#Preview {
    SettingsView(showSignInView: .constant(true))
}
