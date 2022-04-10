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
                    Text("Passagem de parâmetro por referência")
                        .font(.title)
                        .underline()
                        .multilineTextAlignment(.center)
                        
                    Image(uiImage: UIImage(named: "cupStruct")!)
                        .resizable()
                        .imageStyle()
                    
                    Image(uiImage: UIImage(named: "cupAndLiquids")!)
                        .resizable()
                        .imageStyle()
                    
                    Button(cup.content) {
                        withAnimation {
                            changeContent(of: &cup)
                        }
                    }
                    .padding()
                    .background(liquids[cup.content])
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white,
                                    lineWidth: 3))
                    .padding()
                    

                    Image(uiImage: UIImage(named: "firstButtonFunction")!)
                        .resizable()
                        .imageStyle()
                    
                    Text("Auxiliares de parâmetros")
                        .font(.title)
                        .underline()
                        .multilineTextAlignment(.center)
                    
                    Image(uiImage: UIImage(named: "firstReferenceFunction")!)
                        .resizable()
                        .imageStyle()
                    
                    Image(uiImage: UIImage(named: "newButtonFunctionByReference")!)
                        .resizable()
                        .imageStyle()
                    
                    Image(uiImage: UIImage(named: "funtionParameters")!)
                        .resizable()
                        .imageStyle()
                    
                    NavigationLink {
                        RestoView()
                    } label: {
                        Text("Aprender a última lição")
                            .buttonStyle()
                    }
                }
            }
            .navigationTitle("Functions")
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
