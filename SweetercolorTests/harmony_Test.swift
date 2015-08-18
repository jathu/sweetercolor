//
//  harmony_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class harmony_Test: XCTestCase {

    // Test source: http://www.sessions.edu/color-calculator
    
    func testBlack() {
        let black = Sweetercolor.black()
        
        XCTAssertEqual(black.compliment, black, "")
        XCTAssertEqual(black.splitCompliment, [black, black], "")
        XCTAssertEqual(black.analogous, [black, black], "")
        XCTAssertEqual(black.triad, [black, black], "")
    }
    
    func testWhite() {
        let white = Sweetercolor.black()
        
        XCTAssertEqual(white.compliment, white, "")
        XCTAssertEqual(white.splitCompliment, [white, white], "")
        XCTAssertEqual(white.analogous, [white, white], "")
        XCTAssertEqual(white.triad, [white, white], "")
    }
    
    func testSwiftYellow() {
        let color = Sweetercolor(hex: 0xFFAC45)
        
        XCTAssertEqual(color.compliment, Sweetercolor(hex: 0x4599FF), "")
        XCTAssertEqual(color.splitCompliment, [Sweetercolor(hex: 0x4E45FF), Sweetercolor(hex: 0x45F6FF)], "")
        XCTAssertEqual(color.analogous, [Sweetercolor(hex: 0xF6FF45), Sweetercolor(hex: 0xFF4E45)], "")
        XCTAssertEqual(color.triad, [Sweetercolor(hex: 0xAB45FF), Sweetercolor(hex: 0x45FFAB)], "")
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = Sweetercolor(hex: 0xC6143B)
        
        XCTAssertEqual(color.compliment, Sweetercolor(hex: 0x14C69F), "")
        XCTAssertEqual(color.splitCompliment, [Sweetercolor(hex: 0x1494C6), Sweetercolor(hex: 0x14C647)], "")
        XCTAssertEqual(color.analogous, [Sweetercolor(hex: 0xC64714), Sweetercolor(hex: 0xC61494)], "")
        XCTAssertEqual(color.triad, [Sweetercolor(hex: 0x143BC6), Sweetercolor(hex: 0x3BC614)], "")
    }
    
}
