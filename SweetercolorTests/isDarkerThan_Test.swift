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
        
        XCTAssertTrue(black.isDarker(than: white), "Black is darker than white.")
    }
    
    func testRedYellow() {
        let red = UIColor.red
        let yellow = UIColor.yellow
        
        XCTAssertTrue(red.isDarker(than: yellow), "Red is darker than yellow.")
    }
    
    func testBlueLightGray() {
        let blue = UIColor.blue
        let lightGray = UIColor.lightGray
        
        XCTAssertTrue(blue.isDarker(than: lightGray), "Blue is darker than light gray.")
    }
    
    func testYelloOrange() {
        let yellow = UIColor.yellow
        let orange = UIColor.orange
        
        XCTAssertFalse(yellow.isDarker(than: orange), "Yellow is NOT darker than orange.")
    }

}
