//
//  CurrancyConverterUITests.swift
//  CurrancyConverterUITests
//
//  Created by Quintin Gunter on 6/10/17.
//  Copyright © 2017 Quintin Gunter. All rights reserved.
//

import XCTest

class CurrancyConverterUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCalculate() {
        
        
        let app = XCUIApplication()
        let dollarAmountTextField = app.textFields[" Dollar Amount"]
        dollarAmountTextField.tap()
        dollarAmountTextField.typeText("100")
        app.buttons["Convert"].tap()
        app.buttons["Clear"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAddClear(){
        
        let app = XCUIApplication()
        let dollarAmountTextField = app.textFields[" Dollar Amount"]
        dollarAmountTextField.tap()
        dollarAmountTextField.typeText("500")
        app.buttons["Clear"].tap()
        
        
    }
    
    func testRotate(){
        XCUIDevice.shared().orientation = .landscapeRight
        XCUIDevice.shared().orientation = .portrait
        XCUIDevice.shared().orientation = .landscapeLeft
        XCUIDevice.shared().orientation = .portrait
    }
}
