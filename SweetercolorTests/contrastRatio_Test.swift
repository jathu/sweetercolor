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
        let green = Sweetercolor(hex: 0x33FF33)
        let black = Sweetercolor(hex: 0x333333)

        // As snook rounds the numbers, we do too
        let ratio = round(green.contrastRatio(black) * 100)/100
        XCTAssertEqual(ratio.rnd, 9.32, "")
    }
    
    func testMagentaOrange() {
        let magenta = Sweetercolor(red: 255, green: 0, blue: 150, alpha: 1)
        let orange  = Sweetercolor(red: 255, green: 150, blue: 0, alpha: 1)
        
        // As snook rounds the numbers, we do too
        let ratio = round(magenta.contrastRatio(orange) * 100)/100
        XCTAssertEqual(ratio.rnd, 1.69, "")
    }
    
    func testGrayLightGray() {
        let gray = Sweetercolor.gray()
        let lightGray = Sweetercolor.lightGray()
        
        // As snook rounds the numbers, we do too
        let ratio = round(gray.contrastRatio(lightGray) * 100)/100
        XCTAssertEqual(ratio.rnd, 1.70, "")
    }

}
