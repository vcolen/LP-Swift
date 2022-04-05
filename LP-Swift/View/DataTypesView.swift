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
    
    var tuple: (Bool, String) = (true, "Tupla")
    
    enum weekDays {
        case sunday
        case monday
        case tuesday
        case wednesday
        case thursday
        case friday
        case saturday
    }
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 30) {
                    Text("Tipos Primitivos")
                        .font(.bold(.title)())
                        .underline()
                        .foregroundColor(.white)
                    
                    Image(uiImage: UIImage(named: "PrimitiveDataTypes")!)
                        .resizable()
                        .imageStyle()
                    
                    VStack(spacing: 10) {
                        Text("Pontos Flutuantes")
                            .font(.title2)
                            .underline()
                            .foregroundColor(.white)
                        
                        Text("π = 3.1415926535897932384626433...")
                            .font(.bold(.title3)())
                            .foregroundColor(.white)
                        
                        VStack(alignment: .leading) {
                            Text("Float = \(float)")
                                .foregroundColor(.white)
                            
                            Text("Double = \(double)")
                                .foregroundColor(.white)
                        }
                    }
                    
                    VStack {
                        Text("Opcionais")
                            .font(.title2)
                            .underline()
                            .foregroundColor(.white)
                        HStack {
                            Text("Valor do opcional: ")
                            Text(optional ?? "nil")
                                .foregroundColor(optional != nil ? .green : .pink)
                        }
                        .padding()
                        .background(.black)
                        .cornerRadius(16)
                        
                        Button {
                            withAnimation {
                                if optional == nil {
                                    optional = "Não sou mais nil :)"
                                } else {
                                    optional = nil
                                }
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
                        .foregroundColor(.white)
                    
                    Image(uiImage: UIImage(named: "array")!)
                        .resizable()
                        .imageStyle()
                    
                    Image(uiImage: UIImage(named: "dictionary")!)
                        .resizable()
                        .imageStyle()
                    
                    Image(uiImage: UIImage(named: "tuple")!)
                        .resizable()
                        .imageStyle()
                    
                    Image(uiImage: UIImage(named: "enum")!)
                        .resizable()
                        .imageStyle()
                    
                    NavigationLink {
                        ComputedPropertiesView()
                    } label: {
                        Text("Aprender sobre Propriedades Computadas")
                            .buttonStyle()
                    }
                }
            }
            .navigationTitle("Data Types")
        }
    }
}

struct DataTypesView_Previews: PreviewProvider {
    static var previews: some View {
        DataTypesView()
    }
}
