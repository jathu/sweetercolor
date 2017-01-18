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
    }
    
    func testWhite() {
        let white = UIColor.black()
        XCTAssertEqual(white.complement, white, "")
    }
    
    func testSwiftYellow() {
        let color = UIColor(hex: "#FFAC45")
        XCTAssertTrue( color.complement.isEqual(to: UIColor(hex: "#4599FF"), strict: false) )
    }
    
    func testMyBeautifulDarkTwistedPink() {
        let color = UIColor(hex: "#C6143B")
        XCTAssertTrue( color.complement.isEqual(to: UIColor(hex: "#14C69F"), strict: false) )
    }
    
}
