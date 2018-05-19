//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Andrew Ramirez on 5/18/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
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
    //function testing for the Wage.swift function
    //Pro-Tip always run and pass your unit tests before you: create pull requests, deploy to device, send app to beta testers, and Submit apps to App Store
    //Unit test will test the desired result of your business logic 
    func testGetHours() {
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
