//
//  Date+Extension.swift
//  LP-Swift
//
//  Created by Victor Colen on 04/04/22.
//

import Foundation

extension Date {
    func getDifferenceInDays(between date: Date, and otherDate: Date) -> Int {
        Calendar.current.dateComponents([.day], from: date, to: otherDate).day ?? 0
    }
}

