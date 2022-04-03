//
//  DataTypesView.swift
//  LP_APP
//
//  Created by Victor Colen on 03/04/22.
//

import SwiftUI

struct DataTypesView: View {
    //    //inferencia de tipo
    //    var inferredString = "Hello, World!"
    //    var inferredInt = 12
    //    var inferredFloat = 12.5
    //
    //    //aceita praticamente qualquer caractere
    //    let π = 3.14159
    //    let ちょっと待ってください = "Espere um momento, por favor."
    //    let 🐶🐮 = "cachorro-vaca"
    
    var char: Character = "A"
    let string: String = "Hello, World!"
    var int: Int = 2022
    let float: Float = 3.1415926535897932384626433
    var double: Double = 3.1415926535897932384626433
    var bool: Bool = true
    @State private var optional: String? = nil
    
    var arrayDeStrings = [String]() // <- meu favorito
    var arrayDeStrings2: Array<String> = []
    var dictionary1 = [String: Bool]() // <- meu favorito
    var dictionary2 = Dictionary<String, Bool>()
    var tuple: (Bool, String, Int, Float) = (true, "Tupla", 10, 13.5)
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 30) {
                        Text("Tipos Primitivos")
                            .font(.bold(.title)())
                            .underline()
                        Image(uiImage: UIImage(named: "PrimitiveDataTypes")!)
                            .resizable()
                            .imageStyle()
                        
                        VStack(spacing: 10) {
                            Text("Pontos Flutuantes")
                                .font(.title2)
                                .underline()
                            
                            Text("π = 3.1415926535897932384626433...")
                                .font(.bold(.title3)())
                            
                            VStack(alignment: .leading) {
                                Text("Float = \(float)")
                                Text("Double = \(double)")
                            }
                        }
                        
                        VStack {
                            Text("Opcionais")
                                .font(.title2)
                                .underline()
                            HStack {
                                Text("Valor do opcional: ")
                                Text(optional ?? "nil")
                                    .foregroundColor(optional != nil ? .green : .pink)
                            }
                            .padding()
                            .background(.black)
                            .cornerRadius(16)
                            
                            Button {
                                if optional == nil {
                                    optional = "Não sou mais nil :)"
                                } else {
                                    optional = nil
                                }
                            } label: {
                                Text("Mudar valor do opcional")
                                    .buttonStyle()
                            }
                            Image(uiImage: UIImage(named: "OptionalButtonAction")!)
                                .resizable()
                                .imageStyle()
                        }
                        
                        Text("Coleções de dados")
                            .font(.bold(.title)())
                            .underline()
                        
                        Image(uiImage: UIImage(named: "CollectionTypes")!)
                            .resizable()
                            .imageStyle()
                    }
                }
            }
            .navigationTitle("Data Types")
            .preferredColorScheme(.dark)
        }
    }
}

struct DataTypesView_Previews: PreviewProvider {
    static var previews: some View {
        DataTypesView()
    }
}
