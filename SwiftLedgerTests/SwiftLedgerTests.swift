//
//  SwiftLedgerTests.swift
//  SwiftLedgerTests
//
//  Created by Jeffrey Lind on 10/5/24.
//

import Testing
@testable import SwiftLedger

struct SwiftLedgerTests {

    @Test func example() async throws {
        let ledger = Ledger()
        #expect(ledger.sayhello() == "Hello from SwiftLedger!")
    }

}
