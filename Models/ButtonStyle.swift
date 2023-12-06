//
//  ButtonStyle.swift
//  ShowchatSignIn
//
//  Created by Aadit Bagdi on 11/30/23.
//

import Foundation
import SwiftUI

struct OrangeButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(.orange.gradient)
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
    }
}

struct BlackButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(red: 27/255, green: 30/255, blue: 35/255))
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
    }
}
