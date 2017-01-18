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
        let color = UIColor.black
        
        // Screen black
        XCTAssertTrue(color.screen(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Screen white
        XCTAssertTrue(color.screen(with: UIColor.white()).isEqual(to: UIColor.white(), strict: false))
        
        // Screen blue
        XCTAssertTrue(color.screen(with: UIColor.blue).isEqual(to: UIColor(hex: "0000FF"), strict: false))
    }
    
    func testWhite() {
        let color = UIColor.white
        
        // Screen black
        XCTAssertTrue(color.screen(with: UIColor.black()).isEqual(to: UIColor.white(), strict: false))
        
        // Screen white
        XCTAssertTrue(color.screen(with: UIColor.white()).isEqual(to: UIColor.white(), strict: false))
        
        // Screen blue
        XCTAssertTrue(color.screen(with: UIColor.blue).isEqual(to: UIColor.white(), strict: false))
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: "#FFAC45")
        
        // Screen black
        XCTAssertTrue(color.screen(with: UIColor.black()).isEqual(to: UIColor(hex: "#FFAC45"), strict: false))
        
        // Screen white
        XCTAssertTrue(color.screen(with: UIColor.white()).isEqual(to: UIColor(hex: "#FFFFFF"), strict: false))
        
        // Screen blue
        XCTAssertTrue(color.screen(with: UIColor.blue).isEqual(to: UIColor(hex: "#FFACFF"), strict: false))
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: "#C6143B")
        
        // Screen black
        XCTAssertTrue(color.screen(with: UIColor.black()).isEqual(to: UIColor(hex: "#C6143B"), strict: false))
        
        // Screen white
        XCTAssertTrue(color.screen(with: UIColor.white()).isEqual(to: UIColor(hex: "#FFFFFF"), strict: false))
        
        // Screen blue
        XCTAssertTrue(color.screen(with: UIColor.blue).isEqual(to: UIColor(hex: "#C614FF"), strict: false))
    }
    
}
