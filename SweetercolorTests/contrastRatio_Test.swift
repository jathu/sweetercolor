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
        let ratio = round(green.contrastRatio(black) * 100)/100
        XCTAssertEqual(ratio.rnd, 9.32, "")
    }
    
    func testMagentaOrange() {
        let magenta = UIColor(r: 255, g: 0, b: 150, a: 1)
        let orange  = UIColor(r: 255, g: 150, b: 0, a: 1)
        
        // As snook rounds the numbers, we do too
        let ratio = round(magenta.contrastRatio(orange) * 100)/100
        XCTAssertEqual(ratio.rnd, 1.69, "")
    }
    
    func testGrayLightGray() {
        let gray = UIColor.grayColor()
        let lightGray = UIColor.lightGrayColor()
        
        // As snook rounds the numbers, we do too
        let ratio = round(gray.contrastRatio(lightGray) * 100)/100
        XCTAssertEqual(ratio.rnd, 1.70, "")
    }

}
