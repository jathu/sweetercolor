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
        let color = UIColor(hex: 0x000000)
        
        // Screen black
        XCTAssertTrue(color.screen(with: UIColor.black()).isEqual(to: UIColor.black(), strict: false))
        
        // Screen white
        XCTAssertTrue(color.screen(with: UIColor.white()).isEqual(to: UIColor.white(), strict: false))
        
        // Screen blue
        XCTAssertTrue(color.screen(with: UIColor.blue()).isEqual(to: UIColor(hex: 0x0000FF), strict: false))
    }
    
    func testWhite() {
        let color = UIColor(hex: 0xFFFFFF)
        
        // Screen black
        XCTAssertTrue(color.screen(with: UIColor.black()).isEqual(to: UIColor.white(), strict: false))
        
        // Screen white
        XCTAssertTrue(color.screen(with: UIColor.white()).isEqual(to: UIColor.white(), strict: false))
        
        // Screen blue
        XCTAssertTrue(color.screen(with: UIColor.blue()).isEqual(to: UIColor.white(), strict: false))
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: 0xFFAC45)
        
        // Screen black
        XCTAssertTrue(color.screen(with: UIColor.black()).isEqual(to: UIColor(hex: 0xFFAC45), strict: false))
        
        // Screen white
        XCTAssertTrue(color.screen(with: UIColor.white()).isEqual(to: UIColor(hex: 0xFFFFFF), strict: false))
        
        // Screen blue
        XCTAssertTrue(color.screen(with: UIColor.blue()).isEqual(to: UIColor(hex: 0xFFACFF), strict: false))
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: 0xC6143B)
        
        // Screen black
        XCTAssertTrue(color.screen(with: UIColor.black()).isEqual(to: UIColor(hex: 0xC6143B), strict: false))
        
        // Screen white
        XCTAssertTrue(color.screen(with: UIColor.white()).isEqual(to: UIColor(hex: 0xFFFFFF), strict: false))
        
        // Screen blue
        XCTAssertTrue(color.screen(with: UIColor.blue()).isEqual(to: UIColor(hex: 0xC614FF), strict: false))
    }
    
}
