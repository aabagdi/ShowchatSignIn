//
//  ContentView.swift
//  ShowchatSignIn
//
//  Created by Aadit Bagdi on 11/29/23.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift

struct SignUpView: View {
    @StateObject private var viewModel : SignUpViewModel = SignUpViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image("logo")
                    Spacer()
                }
                Spacer()
                HStack {
                    Text("Hi there!")
                        .font(.largeTitle)
                    Spacer()
                }
                HStack {
                    Text("Sign up with")
                        .font(.largeTitle)
                    Spacer()
                }
                HStack {
                    NavigationLink(destination:  {
                        EmailView(showSignIn: .constant(true))
                    }, label: {
                      Text("Email")
                    })
                    .buttonStyle(OrangeButton())
                    NavigationLink(destination:  {
                        PhoneView()
                    }, label: {
                      Text("Phone number")
                    })
                    .buttonStyle(OrangeButton())
                }
                HStack {
                    Text("or join with")
                        .font(.subheadline)
                }
                GoogleSignInButton(viewModel: GoogleSignInButtonViewModel(scheme: .light, style: .standard, state: .normal)) {
                    Task {
                        do {
                            try await viewModel.signInGoogle()
                        } catch {
                            print(error)
                        }
                    }
                }
                .padding()
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SignUpView()
}
