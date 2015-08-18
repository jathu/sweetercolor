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
        XCTAssertTrue(Sweetercolor.black().isDarkColor, "Black is a dark color.")
    }
    
    func testIsWhiteDark() {
        XCTAssertFalse(Sweetercolor.white().isDarkColor, "White is not a dark color.")
    }
    
    func testIsRedDark() {
        XCTAssertTrue(Sweetercolor.red().isDarkColor, "Red is a dark color.")
    }
    
    func testIsYellowDark() {
        XCTAssertFalse(Sweetercolor.yellow().isDarkColor, "Yellow is not a dark color.")
    }
    
    func testIsDarkGrayDark() {
        let darkGray = Sweetercolor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1)
        XCTAssertTrue(darkGray.isDarkColor, "Dark gray is a dark color.")
    }
    
    func testIsMediumGrayDark() {
        let mediumGray = Sweetercolor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        XCTAssertTrue(mediumGray.isDarkColor, "Medium gray is a dark color.")
    }
    
    func testIsLightGrayDark() {
        let lightGray = Sweetercolor(red: 0.75, green: 0.75, blue: 0.75, alpha: 1)
        XCTAssertFalse(lightGray.isDarkColor, "Light gray is not a dark color.")
    }
    
}
