//
//  CurrancyConverterTests.swift
//  CurrancyConverterTests
//
//  Created by Quintin Gunter on 6/5/17.
//  Copyright © 2017 Quintin Gunter. All rights reserved.
//

import XCTest
@testable import CurrancyConverter


class Currency_ConverterTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        viewController = story.instantiateViewController(withIdentifier: "currencyController") as! ViewController
        viewController.loadView()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDollarAmountOnLoad() {
        XCTAssertEqual(viewController.dollarAmount, 0.0, "dollarAmount must first be 0.0")
    }
    
    func testconvertCurrency() {
        let convertNumber = 1.0
        viewController.inputTextField?.text = "\(convertNumber)"
        viewController.convertCurrency(UIButton.init())
        XCTAssertEqual(viewController.poundLabel?.text, "\(0.69)")
    }
    
    func testClearedTextField() {
        let clearNumber = 10.0
        viewController.inputTextField?.text = "\(clearNumber)"
        viewController.clearTextField(UIButton.init())
        XCTAssertEqual(viewController.inputTextField?.text, "")
    }
    func testViewControllerLoad() {
        XCTAssertNotNil(viewController.view, "View did not load for ViewController")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
