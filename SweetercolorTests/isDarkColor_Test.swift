//
//  isDarkColor_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class isDarkColor_Test: XCTestCase {
    
    func testIsBlackDark() {
        XCTAssertTrue(UIColor.black().isDarkColor, "Black is a dark color.")
    }
    
    func testIsWhiteDark() {
        XCTAssertFalse(UIColor.white().isDarkColor, "White is not a dark color.")
    }
    
    func testIsRedDark() {
        XCTAssertTrue(UIColor.redColor().isDarkColor, "Red is a dark color.")
    }
    
    func testIsYellowDark() {
        XCTAssertFalse(UIColor.yellowColor().isDarkColor, "Yellow is not a dark color.")
    }
    
    func testIsDarkGrayDark() {
        let darkGray = UIColor(r: 0.25, g: 0.25, b: 0.25, a: 1)
        XCTAssertTrue(darkGray.isDarkColor, "Dark gray is a dark color.")
    }
    
    func testIsMediumGrayDark() {
        let mediumGray = UIColor(r: 0.5, g: 0.5, b: 0.5, a: 1)
        XCTAssertTrue(mediumGray.isDarkColor, "Medium gray is a dark color.")
    }
    
    func testIsLightGrayDark() {
        let lightGray = UIColor(r: 0.75, g: 0.75, b: 0.75, a: 1)
        XCTAssertFalse(lightGray.isDarkColor, "Light gray is not a dark color.")
    }
    
}
