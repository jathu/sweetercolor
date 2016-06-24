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
        let black = UIColor.black()
        let white = UIColor.white()
        let expected: CGFloat = 100
        
        // As ColorMine rounds the numbers, we do too
        let deltaE = round(black.CIE94(compare: white))
        XCTAssertTrue(deltaE.residualCompare(with: expected))
    }
    
    func testMagentaOrange() {
        let magenta = UIColor(r: 255, g: 0, b: 150, a: 1)
        let orange  = UIColor(r: 255, g: 150, b: 0, a: 1)
        let expected: CGFloat = 46.7143
        
        // As ColorMine rounds the numbers, we do too
        let deltaE = round(magenta.CIE94(compare: orange) * 10000)/10000
        XCTAssertTrue(deltaE.residualCompare(with: expected))
    }

}
