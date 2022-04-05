//
//  Closures.swift.swift
//  LP_APP
//
//  Created by Victor Colen on 03/04/22.
//

import SwiftUI

struct ClosuresView: View {    
    @State private var countries = [Country]()
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.swiftOrange, .swiftRed], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Text("Países que falam português")
                        .font(.title)
                        .underline()
                    
                    ForEach(countries) { country in
                        VStack(alignment: .leading) {
                            HStack {
                                Text("País: ")
                                Text(country.name)
                                    .foregroundColor(.mint)
                            }
                            HStack {
                                Text("Capital: ")
                                Text(country.capital ?? "Não especificada")
                                    .foregroundColor(country.capital != nil ? .green : .purple)
                            }
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(18)
                    }
                    
                    Image(uiImage: UIImage(named: "closures")!)
                        .resizable()
                        .imageStyle()
                    
                    Text("Ordenando um Vetor")
                        .font(.title)
                        .underline()
                    
                    Image(uiImage: UIImage(named: "countriesSortSnippet")!)
                        .resizable()
                        .imageStyle()
                    
                    Image(uiImage: UIImage(named: "countriesSortCode")!)
                        .resizable()
                        .imageStyle()
                    
                    NavigationLink {
                        ExtensionView()
                    } label: {
                        Text("Aprender sobre Extensions")
                            .buttonStyle()
                    }
                }
            }
            .task {
                await loadCountries()
            }
            .navigationTitle("Closures")
        }
    }
    
    func loadCountries() async  {
        guard let url = URL(string: "https://restcountries.com/v2/lang/pt") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedResponse = try JSONDecoder().decode([Country].self, from: data)
            countries = decodedResponse
            countries.sort { country1, country2 in
                country1.name < country2.name
            }
        } catch {
            print(error)
        }
    }
}

struct Closures_Previews: PreviewProvider {
    static var previews: some View {
        ClosuresView()
    }
}
