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
