//
//  AccountCreationView.swift
//  ShowchatSignIn
//
//  Created by Aadit Bagdi on 11/30/23.
//

import SwiftUI

struct EmailView: View {
    @StateObject private var viewModel : EmailViewModel = EmailViewModel()
    @Binding var showSignIn : Bool
    
    
    var body: some View {
        VStack {
            HStack {
                Image("logoDark")
                Spacer()
            }
            HStack {
                Text("Sign up")
                    .font(.largeTitle)
                Spacer()
            }
            Spacer()
            VStack {
                HStack{
                    Text("Username")
                    Spacer()
                }
                TextField("Username", text: $viewModel.username)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .textFieldStyle(.roundedBorder)
                    .padding()
                HStack{
                    Text("Email")
                    Spacer()
                }
                TextField("Email", text: $viewModel.email)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .textFieldStyle(.roundedBorder)
                    .padding()

                HStack{
                    Text("Password")
                    Spacer()
                }
                SecureField("Password", text: $viewModel.password)
                    .textInputAutocapitalization(.never)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Continue") {
                    Task {
                        do {
                            try await viewModel.signUp()
                            showSignIn = false
                        } catch {
                            print(error)
                        }
                        
                        do {
                            try await viewModel.signIn()
                            showSignIn = false
                        } catch {
                            print(error)
                        }
                    }
                }
                    .buttonStyle(OrangeButton())
                    .padding()
                
            }
            Spacer()
        }
    }
}

#Preview {
    EmailView(showSignIn: .constant(false))
}
