//
//  ButtonStyle.swift
//  LP_APP
//
//  Created by Victor Colen on 03/04/22.
//

import SwiftUI

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .padding()
            .background(.white)
            .cornerRadius(16)
    }
}
