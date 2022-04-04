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
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 10) {
                Image(uiImage: UIImage(named: "dateExtension")!)
                    .resizable()
                    .imageStyle()
                
                VStack {
                    Text(String(date))
                        .font(.title)
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(16)
                    
                    Button {
                        getDate()
                        buttonIsDisabled = true
                    } label: {
                        Text("Descobrir quantos dias se passaram desde o fim da Primeira Guerra Mundial")
                            .padding()
                            .background(buttonIsDisabled ? .clear : .white)
                            .cornerRadius(16)
                    }
                    .disabled(buttonIsDisabled)
                }
            }
        }
        .navigationTitle("Extensions")
    }
    
    func getDate()  {
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
