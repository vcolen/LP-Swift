//
//  ExtensionView.swift
//  LP-Swift
//
//  Created by Victor Colen on 03/04/22.
//

import SwiftUI

struct ExtensionView: View {
    let ww1EndDate = "11-11-1918"
    @State var date = 0
    @State private var buttonIsDisabled = false
    
    let buttonColors: [Color] = [.swiftOrange,
                                 .purple,
                                 .green,
                                 .blue,
                                 .swiftRed,
                                 .cyan,
                                 .indigo,
                                 .pink]
    
    @State private var buttonColor: Color = .black
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 30) {
                    Image(uiImage: UIImage(named: "dateExtension")!)
                        .resizable()
                        .imageStyle()
                    
                    VStack {
                        Text(String(date))
                            .font(.title)
                            .padding()
                            .background(.ultraThinMaterial)
                            .cornerRadius(16)
                            .foregroundColor(.white)
                        
                        Button {
                            getDaysAfterWW1()
                            buttonIsDisabled = true
                        } label: {
                            Text("Descobrir quantos dias se passaram desde o fim da Primeira Guerra Mundial")
                                .padding()
                                .foregroundColor(buttonIsDisabled ? .gray : .blue)
                                .background(.white)
                                .cornerRadius(16)
                        }
                        .disabled(buttonIsDisabled)
                    }
                    VStack(spacing: 10) {
                        Image(uiImage: UIImage(named: "colorExtension")!)
                            .resizable()
                            .imageStyle()
                        
                        Button {
                            buttonColor = buttonColors.randomElement()!
                        } label: {
                            Text("Mudar a cor do botão")
                                .padding()
                                .foregroundColor(.white)
                                .background(buttonColor)
                                .cornerRadius(16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(.white,
                                                lineWidth: 3))
                                .padding()
                        }
                        
                        Image(uiImage: UIImage(named: "buttonColorsArray")!)
                            .resizable()
                            .imageStyle()
                        
                        Image(uiImage: UIImage(named: "changeButtonColorButton")!)
                            .resizable()
                            .imageStyle()
                    }
                }
            }
        }
        .navigationTitle("Extensions")
    }
    
    func getDaysAfterWW1()  {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        date = Date().getDifferenceInDays(between: dateFormatter.date(from: ww1EndDate)!,
                                          and: Date())
    }
}

struct ExtensionView_Previews: PreviewProvider {
    static var previews: some View {
        ExtensionView()
    }
}
