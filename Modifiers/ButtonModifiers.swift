//
//  ButtonModifiers.swift
//  Firebase Kayit Olma ve Giris Auth
//
//  Created by Ege Aydemir on 11.02.2023.
//

import SwiftUI

struct ButtonModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}


