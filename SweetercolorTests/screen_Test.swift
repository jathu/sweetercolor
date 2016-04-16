//
//  screen_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class screen_Test: XCTestCase {

    // Test source: Photoshop
    
    func testBlack() {
        let color = UIColor(hex: 0x000000)
        
        // Screen black
        XCTAssertEqual(color.screen(UIColor.black()), UIColor(hex: 0x000000), "")
        
        // Screen white
        XCTAssertEqual(color.screen(UIColor.white()), UIColor(hex: 0xFFFFFF), "")
        
        // Screen blue
        XCTAssertEqual(color.screen(UIColor.blueColor()), UIColor(hex: 0x0000FF), "")
    }
    
    func testWhite() {
        let color = UIColor(hex: 0xFFFFFF)
        
        // Screen black
        XCTAssertEqual(color.screen(UIColor.black()), UIColor(hex: 0xFFFFFF), "")
        
        // Screen white
        XCTAssertEqual(color.screen(UIColor.white()), UIColor(hex: 0xFFFFFF), "")
        
        // Screen blue
        XCTAssertEqual(color.screen(UIColor.blueColor()), UIColor(hex: 0xFFFFFF), "")
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: 0xFFAC45)
        
        // Screen black
        XCTAssertEqual(color.screen(UIColor.black()), UIColor(hex: 0xFFAC45), "")
        
        // Screen white
        XCTAssertEqual(color.screen(UIColor.white()), UIColor(hex: 0xFFFFFF), "")
        
        // Screen blue
        XCTAssertEqual(color.screen(UIColor.blueColor()), UIColor(hex: 0xFFACFF), "")
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: 0xC6143B)
        
        // Screen black
        XCTAssertEqual(color.screen(UIColor.black()), UIColor(hex: 0xC6143B), "")
        
        // Screen white
        XCTAssertEqual(color.screen(UIColor.white()), UIColor(hex: 0xFFFFFF), "")
        
        // Screen blue
        XCTAssertEqual(color.screen(UIColor.blueColor()), UIColor(hex: 0xC614FF), "")
    }
    
}
