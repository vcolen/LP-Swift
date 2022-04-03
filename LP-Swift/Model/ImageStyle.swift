//
//  ImageStyle.swift
//  LP-Swift
//
//  Created by Victor Colen on 03/04/22.
//

import SwiftUI

struct ImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                        .stroke(.white,
                                lineWidth: 3))
            .padding()
    }
}

extension View {
    func imageStyle() -> some View {
        modifier(ImageStyle())
    }
}
