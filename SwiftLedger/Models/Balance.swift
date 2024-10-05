//
//  Balance.swift
//  SwiftLedger
//
//  Created by Jeffrey Lind on 10/5/24.
//

import Foundation
import SwiftData

@Model
final class Balance {
    var amount: Decimal
    
    init(amount: Decimal) {
        self.amount = amount
    }
}
