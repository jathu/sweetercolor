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
        let black = UIColor.black()
        
        XCTAssertEqual(black.complement, black, "")
        XCTAssertEqual(black.splitcomplement, [black, black], "")
        XCTAssertEqual(black.analogous, [black, black], "")
        XCTAssertEqual(black.triad, [black, black], "")
    }
    
    func testWhite() {
        let white = UIColor.black()
        
        XCTAssertEqual(white.complement, white, "")
        XCTAssertEqual(white.splitcomplement, [white, white], "")
        XCTAssertEqual(white.analogous, [white, white], "")
        XCTAssertEqual(white.triad, [white, white], "")
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: 0xFFAC45)
        
        XCTAssertEqual(color.complement, UIColor(hex: 0x4599FF), "")
        XCTAssertEqual(color.splitcomplement, [UIColor(hex: 0x4E45FF), UIColor(hex: 0x45F6FF)], "")
        XCTAssertEqual(color.analogous, [UIColor(hex: 0xF6FF45), UIColor(hex: 0xFF4E45)], "")
        XCTAssertEqual(color.triad, [UIColor(hex: 0xAB45FF), UIColor(hex: 0x45FFAB)], "")
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: 0xC6143B)
        
        XCTAssertEqual(color.complement, UIColor(hex: 0x14C69F), "")
        XCTAssertEqual(color.splitcomplement, [UIColor(hex: 0x1494C6), UIColor(hex: 0x14C647)], "")
        XCTAssertEqual(color.analogous, [UIColor(hex: 0xC64714), UIColor(hex: 0xC61494)], "")
        XCTAssertEqual(color.triad, [UIColor(hex: 0x143BC6), UIColor(hex: 0x3BC614)], "")
    }
    
}
