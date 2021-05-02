//
//  Date+Extension.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import Foundation

extension Date {
    func format(with outputFormat: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = outputFormat
        return formatter.string(from: self)
    }
}
