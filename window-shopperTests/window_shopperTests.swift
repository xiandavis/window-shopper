//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Christian Davis on 12/10/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours() { // MARK WROTE THIS FUNC. it tests code by asserting the example data aginst the expected results below. Can run test by clicking diamond icon at left margin
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4) // code options did not pop up after typing . so to solve Mark selects Wage.swift in nav, then File Inspector > Target Membership, check window-shopperTests
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17) // 17 here (and 4 in statement above) are the results we are expecting to be returned by getHours()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
