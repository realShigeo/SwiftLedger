//
//  SwiftLedgerTests.swift
//  SwiftLedgerTests
//
//  Created by Jeffrey Lind on 10/5/24.
//

import Testing
import Foundation
@testable import SwiftLedger

struct SwiftLedgerTests {
    @Test("Initialize Account") func initializeAccount() async throws {
        let name = "Capital One Checking"
        let normalBalance = NormalBalance.debit
        let postedBalance: Decimal = 0
        let pendingBalance: Decimal = 0
        let availableBalance: Decimal = 0
        
        let capitalOneChecking = Account(name: name)
        
        #expect(capitalOneChecking.name == name)
        #expect(capitalOneChecking.normalBalance == normalBalance)
        #expect(capitalOneChecking.postedBalance == postedBalance)
        #expect(capitalOneChecking.pendingBalance == pendingBalance)
        #expect(capitalOneChecking.availableBalance == availableBalance)
        #expect(capitalOneChecking.transactions.isEmpty)
    }
}
