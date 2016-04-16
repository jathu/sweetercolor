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
        let black = UIColor.black()
        let white = UIColor.white()
        
        XCTAssertTrue(black.isDarkerThan(white), "Black is darker than white.")
    }
    
    func testRedYellow() {
        let red = UIColor.redColor()
        let yellow = UIColor.yellowColor()
        
        XCTAssertTrue(red.isDarkerThan(yellow), "Red is darker than yellow.")
    }
    
    func testBlueLightGray() {
        let blue = UIColor.blueColor()
        let lightGray = UIColor.lightGrayColor()
        
        XCTAssertTrue(blue.isDarkerThan(lightGray), "Blue is darker than light gray.")
    }
    
    func testYelloOrange() {
        let yellow = UIColor.yellowColor()
        let orange = UIColor.orangeColor()
        
        XCTAssertFalse(yellow.isDarkerThan(orange), "Yellow is NOT darker than orange.")
    }

}
