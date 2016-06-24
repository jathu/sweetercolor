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
        XCTAssertTrue(color.multiply(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.multiply(with: UIColor.white()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.multiply(with: UIColor.blue()).isEqual(to: UIColor.black(), strict: false))
    }
    
    func testWhite() {
        let color = UIColor(hex: 0xFFFFFF)
        
        // Overlay black
        XCTAssertTrue(color.multiply(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.multiply(with: UIColor.white()).isEqual(to: UIColor.white(), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.multiply(with: UIColor.blue()).isEqual(to: UIColor(hex: 0x0000FF), strict: false))
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: 0xFFAC45)
        
        // Overlay black
        XCTAssertTrue(color.multiply(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.multiply(with: UIColor.white()).isEqual(to: UIColor(hex: 0xFFAC45), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.multiply(with: UIColor.blue()).isEqual(to: UIColor(hex: 0x000045), strict: false))
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: 0xC6143B)
        
        // Overlay black
        XCTAssertTrue(color.multiply(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.multiply(with: UIColor.white()).isEqual(to: UIColor(hex: 0xC6143B), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.multiply(with: UIColor.blue()).isEqual(to: UIColor(hex: 0x00003B), strict: false))
    }

}
