//
//  PublisherTests.swift
//  ChallengeTests
//
//  Created by Mortgy on 5/2/21.
//

import XCTest
@testable import Challenge

class PublisherTests: XCTestCase {

    var publisher: Publisher<String> = Publisher("publisher")

    func test_updating() {
        XCTAssertEqual(publisher.value, "publisher")
        
        publisher.subscribe { [weak self] value in
            guard let value = value, let newPubValue = self?.publisher.value else { return }
            XCTAssertEqual(value, newPubValue)
        }
        
        publisher.value = "new publisher"
    }
}
