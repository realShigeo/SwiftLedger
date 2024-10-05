//
//  Account.swift
//  SwiftLedger
//
//  Created by Jeffrey Lind on 10/5/24.
//

import SwiftData

@Model
final class Account {
    var normalBalance: String
    var postedBalance: Balance
    var pendingBalance: Balance
    var availableBalance: Balance
    
    init(normalBalance: String, postedBalance: Balance, pendingBalance: Balance, availableBalance: Balance) {
        self.normalBalance = normalBalance
        self.postedBalance = postedBalance
        self.pendingBalance = pendingBalance
        self.availableBalance = availableBalance
    }
}
