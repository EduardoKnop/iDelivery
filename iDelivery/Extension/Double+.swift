//
//  Double+.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        return String(format: "%.2f", self)
    }
}
