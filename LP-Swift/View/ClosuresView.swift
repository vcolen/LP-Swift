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
                    Image(uiImage: UIImage(named: "closures")!)
                        .resizable()
                        .imageStyle()
                    
                    ForEach(countries) { country in
                        HStack {
                            Text(country.name)
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(18)
                    }
                    
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
