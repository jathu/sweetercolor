//
//  CIE94_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class CIE94_Test: XCTestCase {
    
    // Test source: http://colormine.org/delta-e-calculator/cie94
    
    func testBlackWhite() {
        let black = Sweetercolor.black()
        let white = Sweetercolor.white()
        let expected: CGFloat = 100
        
        // As ColorMine rounds the numbers, we do too
        let deltaE = round(black.CIE94(white))
        XCTAssertEqual(deltaE.rnd, expected.rnd, "")
    }
    
    func testMagentaOrange() {
        let magenta = Sweetercolor(red: 255, green: 0, blue: 150, alpha: 1)
        let orange  = Sweetercolor(red: 255, green: 150, blue: 0, alpha: 1)
        let expected: CGFloat = 46.7143
        
        // As ColorMine rounds the numbers, we do too
        let deltaE = round(magenta.CIE94(orange) * 10000)/10000
        XCTAssertEqual(deltaE.rnd, expected.rnd, "")
    }

}
