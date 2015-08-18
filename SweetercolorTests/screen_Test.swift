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
        let color = Sweetercolor(hex: 0x000000)
        
        // Overlay black
        XCTAssertEqual(color.screen(Sweetercolor.black()), Sweetercolor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.screen(Sweetercolor.white()), Sweetercolor(hex: 0xFFFFFF), "")
        
        // Overlay blue
        XCTAssertEqual(color.screen(Sweetercolor.blue()), Sweetercolor(hex: 0x0000FF), "")
    }
    
    func testWhite() {
        let color = Sweetercolor(hex: 0xFFFFFF)
        
        // Overlay black
        XCTAssertEqual(color.screen(Sweetercolor.black()), Sweetercolor(hex: 0xFFFFFF), "")
        
        // Overlay white
        XCTAssertEqual(color.screen(Sweetercolor.white()), Sweetercolor(hex: 0xFFFFFF), "")
        
        // Overlay blue
        XCTAssertEqual(color.screen(Sweetercolor.blue()), Sweetercolor(hex: 0xFFFFFF), "")
    }
    
    func testSwiftYellow() {
        let color = Sweetercolor(hex: 0xFFAC45)
        
        // Overlay black
        XCTAssertEqual(color.screen(Sweetercolor.black()), Sweetercolor(hex: 0xFFAC45), "")
        
        // Overlay white
        XCTAssertEqual(color.screen(Sweetercolor.white()), Sweetercolor(hex: 0xFFFFFF), "")
        
        // Overlay blue
        XCTAssertEqual(color.screen(Sweetercolor.blue()), Sweetercolor(hex: 0xFFACFF), "")
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = Sweetercolor(hex: 0xC6143B)
        
        // Overlay black
        XCTAssertEqual(color.screen(Sweetercolor.black()), Sweetercolor(hex: 0xC6143B), "")
        
        // Overlay white
        XCTAssertEqual(color.screen(Sweetercolor.white()), Sweetercolor(hex: 0xFFFFFF), "")
        
        // Overlay blue
        XCTAssertEqual(color.screen(Sweetercolor.blue()), Sweetercolor(hex: 0xC614FF), "")
    }
    
}
