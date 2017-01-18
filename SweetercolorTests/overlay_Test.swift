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
        let color = UIColor.black
        
        // Overlay black
        XCTAssertTrue(color.overlayBlack.isEqual(to: UIColor(hex: "#000000"), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.overlayWhite.isEqual(to: UIColor(hex: "#000000"), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.overlay(with: UIColor.blue).isEqual(to: UIColor(hex: "#000000"), strict: false))
    }
    
    func testWhite() {
        let color = UIColor.white
        
        // Overlay black
        XCTAssertTrue(color.overlayBlack.isEqual(to: UIColor(hex: "#FFFFFF"), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.overlayWhite.isEqual(to: UIColor(hex: "#FFFFFF"), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.overlay(with: UIColor.blue).isEqual(to: UIColor(hex: "#FFFFFF"), strict: false))
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: "#FFAC45")
        
        // Overlay black
        XCTAssertTrue(color.overlayBlack.isEqual(to: UIColor(hex: "#FF5900"), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.overlayWhite.isEqual(to: UIColor(hex: "#FFFF8A"), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.overlay(with: UIColor.blue).isEqual(to: UIColor(hex: "#FF598A"), strict: false))
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: "#C6143B")
        
        // Overlay black
        XCTAssertTrue(color.overlayBlack.isEqual(to: UIColor(hex: "#8D0000"), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.overlayWhite.isEqual(to: UIColor(hex: "#FF2876"), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.overlay(with: UIColor.blue).isEqual(to: UIColor(hex: "#8D0076"), strict: false))
    }
    
}
