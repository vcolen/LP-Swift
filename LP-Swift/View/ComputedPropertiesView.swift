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
        ZStack(alignment: .top) {
            LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image(uiImage: UIImage(named: "computedProperty")!)
                    .resizable()
                    .imageStyle()
                
                Button {
                    aux = randomNumber
                } label: {
                    Text("Gerar número aleatório")
                        .buttonStyle()
                }
                
                Text(String(aux))
                    .font(.title)
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(16)
                
                Image(uiImage: UIImage(named: "computedPropertyButton")!)
                    .resizable()
                    .imageStyle()
                
                NavigationLink {
                    ClosuresView()
                } label: {
                    Text("Aprender sobre Closures")
                        .buttonStyle()
                }
            }
            .navigationTitle("Computed Properties")
        }
    }
}

struct ComputedProperties_Previews: PreviewProvider {
    static var previews: some View {
        ComputedPropertiesView()
    }
}
