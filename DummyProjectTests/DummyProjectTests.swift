//
//  DummyProjectTests.swift
//  DummyProjectTests
//
//  Created by Bang Nguyen on 13/4/20.
//  Copyright © 2020 Grab. All rights reserved.
//

import XCTest
// @testable import AppMainLib
//@testable import DummyProject

class DummyProjectTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print(#function)
        XCTAssert(true)
    }

    func testHelloWork() {
      print(#function)
      XCTAssert(true)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
