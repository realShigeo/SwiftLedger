//
//  Transaction.swift
//  SwiftLedger
//
//  Created by Jeffrey Lind on 10/5/24.
//

import SwiftData

@Model
final class Transaction {
    var status: Status
    
    var account: Account?
    @Relationship(deleteRule: .cascade, inverse: \Entry.transaction) var entries: [Entry]
    
    init(status: Status, account: Account? = nil, entries: [Entry]) {
        self.status = status
        self.account = account
        self.entries = entries
    }
}
