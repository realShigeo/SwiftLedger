//
//  Entry.swift
//  SwiftLedger
//
//  Created by Jeffrey Lind on 10/5/24.
//

import Foundation
import SwiftData

@Model
final class Entry {
    var status: Status
    var direction: Direction
    var amount: Decimal
    var discarded_at: Date? = nil
        
    var transaction: Transaction?
    
    init(status: Status, direction: Direction, amount: Decimal, discarded_at: Date? = nil, transaction: Transaction? = nil) {
        self.status = status
        self.direction = direction
        self.amount = amount
        self.discarded_at = discarded_at
        self.transaction = transaction
    }
}
