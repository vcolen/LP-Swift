//
//  Movie.swift
//  LP-Swift
//
//  Created by Victor Colen on 07/04/22.
//

import Foundation

class Movie {
    
    static var referenceCounter = 0
    
    init() {
        Movie.referenceCounter += 1
    }
    
    deinit {
        Movie.referenceCounter -= 1
    }
    
}
