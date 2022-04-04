//
//  ContentView.swift
//  LP-Swift
//
//  Created by Victor Colen on 04/04/22.
//

import SwiftUI

struct ContentView: View {
    private let viewArray = [
        "Tipos de Dado",
        "Propriedades Computadas",
    ]
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top){
                Color.white
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Image(uiImage: UIImage(named: "swift")!)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60, alignment: .leading)
                        
                        Text("Taylor Swift")
                            .font(.system(size: 40, weight: .thin, design: .default))
                            .foregroundColor(.swiftRed)
                    }
                    .padding()
                    
                    List(viewArray, id: \.self) { view in
                        NavigationLink {
                            switch view {
                            case "Tipos de dado":
                                DataTypesView()
                            case "Propriedades Computadas":
                                ComputedPropertiesView()
                            default:
                                ExtensionView()
                            }
                        } label: {
                            Text(view)
                                .foregroundColor(.white)
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            LinearGradient(colors: [.swiftRed, .swiftOrange], startPoint: .leading, endPoint: .bottomTrailing)
                        )
                        .cornerRadius(16)
                        
                    }
                    .listStyle(.plain)
                }
            }
            .navigationBarHidden(true)
            .listItemTint(.swiftRed)
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}