//
//  Float+Extension.swift
//  LP_APP
//
//  Created by Victor Colen on 03/04/22.
//

import Foundation

extension Float {
    func decimalPoints(_ decimalPoints: Int) -> String {
        return String(format: "%.\(decimalPoints)f", self)
    }
}
