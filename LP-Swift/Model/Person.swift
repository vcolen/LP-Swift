//
//  Person.swift
//  LP_APP
//
//  Created by Victor Colen on 03/04/22.
//

import Foundation

class Person {
    let cpf: String
    let name: String
    var age: Int
    var height: Float
    var weight: Float
    
    init(cpf: String, name: String, age: Int, height: Float, weight: Float) {
        self.cpf = cpf
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
    }
    
    func greet() {
        print("Olá, eu me chamo \(name) e tenho \(age) anos")
    }
    
    static func getImc(height: Float, weight: Float, completion: ((Float) -> Void)) {
        let imc = weight/(height*height)
        completion(imc)
    }
}
