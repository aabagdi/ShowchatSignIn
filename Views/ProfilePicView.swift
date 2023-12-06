//
//  ContentView.swift
//  ShowchatProfilePic
//
//  Created by Aadit Bagdi on 12/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("logo")
                Spacer()
            }
            Spacer()
            HStack {
                Text("Upload a photo")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                Spacer()
            }
            Text("Distinguish yourself from the rest and help your friends find you")
                .padding()
            Spacer()
            Spacer()
            Spacer()
            ProfileButtonView()
                .padding()
            Spacer()
            Spacer()
            Spacer()
            HStack {
                Button("Exit") {
                    
                }
                .buttonStyle(BlackButton())
                Button("Continue") {
                }
                .buttonStyle(OrangeButton())
            }
        }
        .padding()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
