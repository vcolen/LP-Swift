//
//  Closures.swift.swift
//  LP_APP
//
//  Created by Victor Colen on 03/04/22.
//

import SwiftUI

struct ClosuresView: View {
    @State private var height: Float = 0.0
    @State private var weight: Float = 0.0
    @State private var imc: Float = 0.0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(spacing: 50) {
                VStack {
                    Text("Peso")
                        .font(.headline)
                    TextField("Peso em Quilos", value: $weight, format: .number)
                        .padding()
                        .textFieldStyle(.roundedBorder)
                }
                
                VStack(alignment: .center) {
                    Text("Altura")
                        .font(.headline)
                    TextField("Altura em Centímetros", value: $height, format: .number)
                        .padding()
                        .textFieldStyle(.roundedBorder)
                }
                
                Button {
                    Person.getImc(height: height/100, weight: weight) { calculatedImc in
                        imc = calculatedImc
                    }
                } label: {
                    Text("Calcular IMC")
                        .buttonStyle()
                }
                
                Text(imc.decimalPoints(2))
                    .font(.title)
            }
            .navigationTitle("Closures & Extensions")
        }
    }
}

struct Closures_Previews: PreviewProvider {
    static var previews: some View {
        ClosuresView()
    }
}
