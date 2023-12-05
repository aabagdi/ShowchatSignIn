//
//  RootView.swift
//  ShowchatSignIn
//
//  Created by Aadit Bagdi on 11/30/23.
//

import SwiftUI

struct RootView: View {
    @State private var showSignInView : Bool = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                SettingsView(showSignInView: $showSignInView)
            }
        }
        .onAppear {
            let authUser = try? AuthManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil ? true : false
        }
        .fullScreenCover(isPresented: $showSignInView, content: {
            SignUpView()
        })
    }
}

#Preview {
    RootView()
}
