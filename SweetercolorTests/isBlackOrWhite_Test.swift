//
//  isBlackOrWhite_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class isBlackOrWhite_Test: XCTestCase {
    
    func testBlack() {
        XCTAssertTrue(Sweetercolor.black().isBlackOrWhite, "Black is black or white.")
    }
    
    func testWhite() {
        XCTAssertTrue(Sweetercolor.white().isBlackOrWhite, "White is black or white.")
    }
    
    func testRed() {
        XCTAssertFalse(Sweetercolor.red().isBlackOrWhite, "Red is not black or white.")
    }
    
    func testGray() {
        XCTAssertFalse(Sweetercolor.gray().isBlackOrWhite, "Gray is not black or white.")
    }
    
}
