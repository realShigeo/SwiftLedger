//
//  Account.swift
//  SwiftLedger
//
//  Created by Jeffrey Lind on 10/5/24.
//

import Foundation
import SwiftData

@Model
final class Account {
    var name: String
    var normalBalance = NormalBalance.debit
    
    var postedBalance: Decimal = 0
    var pendingBalance: Decimal = 0
    var availableBalance: Decimal = 0
    
    @Relationship(deleteRule: .cascade, inverse: \Transaction.account) var transactions = [Transaction]()

    init(name: String) {
        self.name = name
    }
}
