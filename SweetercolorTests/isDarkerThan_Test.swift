//
//  isDarkerThan_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class isDarkerThan_Test: XCTestCase {
    
    func testBlackWhite() {
        let black = Sweetercolor.black()
        let white = Sweetercolor.white()
        
        XCTAssertTrue(black.isDarkerThan(white), "Black is darker than white.")
    }
    
    func testRedYellow() {
        let red = Sweetercolor.red()
        let yellow = Sweetercolor.yellow()
        
        XCTAssertTrue(red.isDarkerThan(yellow), "Red is darker than yellow.")
    }
    
    func testBlueLightGray() {
        let blue = Sweetercolor.blue()
        let lightGray = Sweetercolor.lightGray()
        
        XCTAssertTrue(blue.isDarkerThan(lightGray), "Blue is darker than light gray.")
    }
    
    func testYelloOrange() {
        let yellow = Sweetercolor.yellow()
        let orange = Sweetercolor.orange()
        
        XCTAssertFalse(yellow.isDarkerThan(orange), "Yellow is NOT darker than orange.")
    }

}
