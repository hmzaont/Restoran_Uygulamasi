//
//  String+Ext.swift
//  BoltFood
//
//  Created by Hamza ONAT on 21\05\2024.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}

extension Double {
    func twoDecimalPlaces() -> String {
        return String(format: "%.2f", self)
    }
}
