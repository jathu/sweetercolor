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
        let color = UIColor.black
        
        // Overlay black
        XCTAssertTrue(color.multiply(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.multiply(with: UIColor.white()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.multiply(with: UIColor.blue).isEqual(to: UIColor.black(), strict: false))
    }
    
    func testWhite() {
        let color = UIColor.white
        
        // Overlay black
        XCTAssertTrue(color.multiply(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.multiply(with: UIColor.white()).isEqual(to: UIColor.white(), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.multiply(with: UIColor.blue).isEqual(to: UIColor(hex: "#0000FF"), strict: false))
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: "#FFAC45")
        
        // Overlay black
        XCTAssertTrue(color.multiply(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.multiply(with: UIColor.white()).isEqual(to: UIColor(hex: "#FFAC45"), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.multiply(with: UIColor.blue).isEqual(to: UIColor(hex: "#000045"), strict: false))
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: "#C6143B")
        
        // Overlay black
        XCTAssertTrue(color.multiply(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Overlay white
        XCTAssertTrue(color.multiply(with: UIColor.white()).isEqual(to: UIColor(hex: "#C6143B"), strict: false))
        
        // Overlay blue
        XCTAssertTrue(color.multiply(with: UIColor.blue).isEqual(to: UIColor(hex: "#00003B"), strict: false))
    }
    
}
