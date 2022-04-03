//
//  ContentView.swift
//  LP_APP
//
//  Created by Victor Colen on 03/04/22.
//

import SwiftUI

struct ComputedPropertiesView: View {
    var randomNumber: Int {
        Int.random(in: 1...1000)
    }
    
    @State private var aux = 0
    
    var body: some View {
        
        NavigationView {
            ZStack {
                LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Spacer()
                    Button {
                        aux = randomNumber
                    } label: {
                        Text("Gerar número aleatório")
                            .buttonStyle()
                    }
                    
                    Text(String(aux))
                        .font(.title)
                    Spacer()
                    
                    NavigationLink {
                        ClosuresView()
                    } label: {
                        Text("Aprender sobre Closures e Extensions")
                            .buttonStyle()
                    }
                }
                .navigationTitle("Computed Properties")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ComputedPropertiesView()
    }
}
