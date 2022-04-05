//
//  FunctionsView.swift
//  LP-Swift
//
//  Created by Victor Colen on 05/04/22.
//

import SwiftUI

struct Cup {
    let material: String
    var content: String
}

struct FunctionsView: View {
    
    @State private var cup = Cup(material: "Vidro", content: "Café")
    
    let liquids: [String: Color] = ["Água": .cyan,
                                    "Café": .brown,
                                    "Vinho": .red,
                                    "Cerveja": .yellow]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Image(uiImage: UIImage(named: "cupStruct")!)
                        .resizable()
                        .imageStyle()
                    
                    Image(uiImage: UIImage(named: "cupAndLiquids")!)
                        .resizable()
                        .imageStyle()
                    
                    Button(cup.content) {
                        changeContent(of: &cup)
                    }
                    .padding()
                    .background(liquids[cup.content])
                    .cornerRadius(16)
                    
                    
                    Image(uiImage: UIImage(named: "firstButtonFunction")!)
                        .resizable()
                        .imageStyle()
                    Image(uiImage: UIImage(named: "firstReferenceFunction")!)
                        .resizable()
                        .imageStyle()
                    Image(uiImage: UIImage(named: "newButtonFunctionByReference")!)
                        .resizable()
                        .imageStyle()
                    
                }
            }
        }
    }
    
    func changeContent(of cupStruct: inout Cup) {
        cupStruct.content = liquids.randomElement()!.key
    }
}

struct FunctionsView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionsView()
    }
}
