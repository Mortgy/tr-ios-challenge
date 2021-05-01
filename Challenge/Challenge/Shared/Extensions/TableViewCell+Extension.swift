//
//  TableViewCell+Extension.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import Foundation
import UIKit

extension UITableViewCell {
    static func nib() -> UINib {
        UINib(nibName: identifier(), bundle: nil)
    }
    
    static func identifier() -> String {
        String(describing: Self.self)
    }
}
