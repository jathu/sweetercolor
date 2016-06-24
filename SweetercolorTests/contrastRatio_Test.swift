//
//  contrastRatio_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class contrastRatio_Test: XCTestCase {
    
    // Test Source: http://snook.ca/technical/colour_contrast/colour.html
    
    func testGreenBlack() {
        let green = UIColor(hex: 0x33FF33)
        let black = UIColor(hex: 0x333333)

        // As snook rounds the numbers, we do too
        let ratio = round(green.contrastRatio(with: black) * 100)/100
        XCTAssertTrue(ratio.residualCompare(with: 9.32))
    }
    
    func testMagentaOrange() {
        let magenta = UIColor(r: 255, g: 0, b: 150, a: 1)
        let orange  = UIColor(r: 255, g: 150, b: 0, a: 1)
        
        // As snook rounds the numbers, we do too
        let ratio = round(magenta.contrastRatio(with: orange) * 100)/100
        XCTAssertTrue(ratio.residualCompare(with: 1.69))
    }
    
    func testGrayLightGray() {
        let gray = UIColor.gray()
        let lightGray = UIColor.lightGray()
        
        // As snook rounds the numbers, we do too
        let ratio = round(gray.contrastRatio(with: lightGray) * 100)/100
        XCTAssertTrue(ratio.residualCompare(with: 1.70))
    }

}
