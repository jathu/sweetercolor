//
//  overlay_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class overlay_Test: XCTestCase {
    
    // Test source: Photoshop
    
    func testBlack() {
        let color = UIColor(hex: 0x000000)
        
        // Overlay black
        XCTAssertEqual(color.overlayBlack, UIColor(hex: 0x000000), "")
        
        // Overlay white
        XCTAssertEqual(color.overlayWhite, UIColor(hex: 0x000000), "")
        
        // Overlay blue
        XCTAssertEqual(color.overlay(UIColor.blueColor()), UIColor(hex: 0x000000), "")
    }
    
    func testWhite() {
        let color = UIColor(hex: 0xFFFFFF)
        
        // Overlay black
        XCTAssertEqual(color.overlayBlack, UIColor(hex: 0xFFFFFF), "")
        
        // Overlay white
        XCTAssertEqual(color.overlayWhite, UIColor(hex: 0xFFFFFF), "")
        
        // Overlay blue
        XCTAssertEqual(color.overlay(UIColor.blueColor()), UIColor(hex: 0xFFFFFF), "")
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: 0xFFAC45)
        
        // Overlay black
        XCTAssertEqual(color.overlayBlack, UIColor(hex: 0xFF5900), "")
        
        // Overlay white
        XCTAssertEqual(color.overlayWhite, UIColor(hex: 0xFFFF8A), "")
        
        // Overlay blue
        XCTAssertEqual(color.overlay(UIColor.blueColor()), UIColor(hex: 0xFF598A), "")
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: 0xC6143B)
        
        // Overlay black
        XCTAssertEqual(color.overlayBlack, UIColor(hex: 0x8D0000), "")
        
        // Overlay white
        XCTAssertEqual(color.overlayWhite, UIColor(hex: 0xFF2876), "")
        
        // Overlay blue
        XCTAssertEqual(color.overlay(UIColor.blueColor()), UIColor(hex: 0x8D0076), "")
    }

}
