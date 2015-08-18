//
//  multiply_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class multiply_Test: XCTestCase {
    
    // Test source: Photoshop
    
    func testBlack() {
        let color = Sweetercolor(hex: 0x000000)
        
        // Overlay black
        XCTAssertEqual(color.multiply(Sweetercolor.black()), Sweetercolor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.multiply(Sweetercolor.white()), Sweetercolor(hex: 0x000000), "")
        
        // Overlay blue
        XCTAssertEqual(color.multiply(Sweetercolor.blue()), Sweetercolor(hex: 0x000000), "")
    }
    
    func testWhite() {
        let color = Sweetercolor(hex: 0xFFFFFF)
        
        // Overlay black
        XCTAssertEqual(color.multiply(Sweetercolor.black()), Sweetercolor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.multiply(Sweetercolor.white()), Sweetercolor(hex: 0xFFFFFF), "")
        
        // Overlay blue
        XCTAssertEqual(color.multiply(Sweetercolor.blue()), Sweetercolor(hex: 0x0000FF), "")
    }
    
    func testSwiftYellow() {
        let color = Sweetercolor(hex: 0xFFAC45)
        
        // Overlay black
        XCTAssertEqual(color.multiply(Sweetercolor.black()), Sweetercolor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.multiply(Sweetercolor.white()), Sweetercolor(hex: 0xFFAC45), "")
        
        // Overlay blue
        XCTAssertEqual(color.multiply(Sweetercolor.blue()), Sweetercolor(hex: 0x000045), "")
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = Sweetercolor(hex: 0xC6143B)
        
        // Overlay black
        XCTAssertEqual(color.multiply(Sweetercolor.black()), Sweetercolor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.multiply(Sweetercolor.white()), Sweetercolor(hex: 0xC6143B), "")
        
        // Overlay blue
        XCTAssertEqual(color.multiply(Sweetercolor.blue()), Sweetercolor(hex: 0x00003B), "")
    }

}
