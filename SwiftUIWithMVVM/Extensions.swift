//
//  Extensions.swift
//  SwiftUIWithMVVM
//
//  Created by Abul Kalam Azad on 21/8/23.
//

import Foundation

extension URL {
    var formatted: String {
        (host ?? "").replacingOccurrences(of: "www.", with: "")
    }
}

extension Int {
    var formatted: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}

extension Date {
    var timeAgo: String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .short
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}


