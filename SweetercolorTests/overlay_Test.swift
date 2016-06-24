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
        XCTAssertTrue(color.overlayBlack.isEqual(to: UIColor(hex: 0x000000), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.overlayWhite.isEqual(to: UIColor(hex: 0x000000), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.overlay(with: UIColor.blue()).isEqual(to: UIColor(hex: 0x000000), strict: false))
    }
    
    func testWhite() {
        let color = UIColor(hex: 0xFFFFFF)
        
        // Overlay black
        XCTAssertTrue(color.overlayBlack.isEqual(to: UIColor(hex: 0xFFFFFF), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.overlayWhite.isEqual(to: UIColor(hex: 0xFFFFFF), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.overlay(with: UIColor.blue()).isEqual(to: UIColor(hex: 0xFFFFFF), strict: false))
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: 0xFFAC45)
        
        // Overlay black
        XCTAssertTrue(color.overlayBlack.isEqual(to: UIColor(hex: 0xFF5900), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.overlayWhite.isEqual(to: UIColor(hex: 0xFFFF8A), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.overlay(with: UIColor.blue()).isEqual(to: UIColor(hex: 0xFF598A), strict: false))
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: 0xC6143B)
        
        // Overlay black
        XCTAssertTrue(color.overlayBlack.isEqual(to: UIColor(hex: 0x8D0000), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.overlayWhite.isEqual(to: UIColor(hex: 0xFF2876), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.overlay(with: UIColor.blue()).isEqual(to: UIColor(hex: 0x8D0076), strict: false))
    }

}
