//
//  CustomStyle.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 2/7/21.
//

import SwiftUI
import UIKit

struct EmailButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .clipShape(Capsule())
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .foregroundColor(configuration.isPressed ? .white : .white)
            .background(configuration.isPressed ? Color("EmailButton").opacity(0.75) : Color("EmailButton"))
            .font(.system(size: 18, weight: .medium, design: .default))
            .cornerRadius(25)
    }
}

struct FacebookButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .clipShape(Capsule())
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .foregroundColor(configuration.isPressed ? .white : .white)
            .background(configuration.isPressed ? Color("FacebookButton").opacity(0.75) : Color("FacebookButton"))
            .font(.system(size: 18, weight: .medium, design: .default))
            .cornerRadius(25)
    }
}

struct GoogleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .clipShape(Capsule())
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .foregroundColor(configuration.isPressed ? .white : .white)
            .background(configuration.isPressed ? Color("GoogleButton").opacity(0.75) : Color("GoogleButton"))
            .font(.system(size: 18, weight: .medium, design: .default))
            .cornerRadius(25)
    }
}

struct PhoneButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .clipShape(Capsule())
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .foregroundColor(configuration.isPressed ? .white : .white)
            .background(configuration.isPressed ? Color("PhoneButton").opacity(0.75) : Color("PhoneButton"))
            .font(.system(size: 18, weight: .medium, design: .default))
            .cornerRadius(25)
    }
}

struct TwitterButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .clipShape(Capsule())
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .foregroundColor(configuration.isPressed ? .white : .white)
            .background(configuration.isPressed ? Color("TwitterButton").opacity(0.75) : Color("TwitterButton"))
            .font(.system(size: 18, weight: .medium, design: .default))
            .cornerRadius(25)
    }
}

