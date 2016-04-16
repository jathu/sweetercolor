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
        let color = UIColor(hex: 0x000000)
        
        // Overlay black
        XCTAssertEqual(color.multiply(UIColor.black()), UIColor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.multiply(UIColor.white()), UIColor(hex: 0x000000), "")
        
        // Overlay blue
        XCTAssertEqual(color.multiply(UIColor.blueColor()), UIColor(hex: 0x000000), "")
    }
    
    func testWhite() {
        let color = UIColor(hex: 0xFFFFFF)
        
        // Overlay black
        XCTAssertEqual(color.multiply(UIColor.black()), UIColor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.multiply(UIColor.white()), UIColor(hex: 0xFFFFFF), "")
        
        // Overlay blue
        XCTAssertEqual(color.multiply(UIColor.blueColor()), UIColor(hex: 0x0000FF), "")
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: 0xFFAC45)
        
        // Overlay black
        XCTAssertEqual(color.multiply(UIColor.black()), UIColor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.multiply(UIColor.white()), UIColor(hex: 0xFFAC45), "")
        
        // Overlay blue
        XCTAssertEqual(color.multiply(UIColor.blueColor()), UIColor(hex: 0x000045), "")
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: 0xC6143B)
        
        // Overlay black
        XCTAssertEqual(color.multiply(UIColor.black()), UIColor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.multiply(UIColor.white()), UIColor(hex: 0xC6143B), "")
        
        // Overlay blue
        XCTAssertEqual(color.multiply(UIColor.blueColor()), UIColor(hex: 0x00003B), "")
    }

}
