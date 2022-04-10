//
//  RestoView.swift
//  LP-Swift
//
//  Created by Victor Colen on 07/04/22.
//

import SwiftUI

struct RestoView: View {
    @State private var text = ""
    @State private var number = 0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 30) {
                    Text("Recursividade")
                        .font(.title)
                        .underline()
                    
                    Image(uiImage: UIImage(named: "recursivity")!)
                        .resizable()
                        .imageStyle()
                    
                    VStack {
                        Text("Digite um número")
                            .font(.bold(.title2)())
                        
                        TextField("Selecione um número", value: $number, format: .number)
                            .padding()
                            .background()
                            .cornerRadius(20)
                            .padding()
                    }
                    
                    Button("Iniciar função recursiva") {
                        text = "Contagem Regressiva:\n"
                        countDownToZero(number: number)
                    }
                    .buttonStyle()
                    
                    Text(text)
                    
                    Text("Escopo Dinâmico")
                        .font(.title)
                        .underline()
                    
                    Image(uiImage: UIImage(named: "dynamicScope")!)
                        .resizable()
                        .imageStyle()
                    
                    Text("Ponteiros")
                        .font(.title)
                        .underline()
                    
                    Text("Não use ponteiros em Swift. Não é seguro e nem recomendado pela Apple.")
                    
                    Group {
                        Text("Operadores")
                            .font(.title)
                            .underline()
                        
                        Image(uiImage: UIImage(named: "operands")!)
                            .resizable()
                            .imageStyle()
                        
                        Image(uiImage: UIImage(named: "operandeErrors")!)
                            .resizable()
                            .imageStyle()
                        
                        NavigationLink("Voltar para o menu") {
                            ContentView()
                        }
                        .buttonStyle()
                    }
                }
            }
        }
    }
    
    func countDownToZero(number: Int) {
        text += String(number) + "\n"
        if number > 0 {
            countDownToZero(number: number - 1)
        }
    }
    
}

struct RestoView_Previews: PreviewProvider {
    static var previews: some View {
        RestoView()
    }
}
